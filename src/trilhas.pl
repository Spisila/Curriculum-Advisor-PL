:- ensure_loaded(elegibilidade).


% Pendentes /= [] Caso base (Formatura)
% LimiteSemestres > 0. Check se limite maior que 0
% ProximoLimite is LimiteSemestres - 1. Contador de semestres

prerequisito_transitivo(Disciplina, Ancestral) :-
  prerequisito(Disciplina, Ancestral).

prerequisito_transitivo(Disciplina, Ancestral) :-
  prerequisito(Disciplina, A),
  prerequisito_transitivo(A, Ancestral).

existe_ciclo(Disciplina) :-
  prerequisito_transitivo(Disciplina, Disciplina).

% Limite creditos = 26

% Funções utilitarias

pegar_pendentes(Cursadas, Pendentes) :-
  pegar_disciplinas_obrigatorias(Obrigatorias),
  subtract(Obrigatorias, Cursadas, Pendentes).

% Checa se tem todos os prerequisitos cumpridos
prerequisitos_cumpridos(Disciplina, Cursadas) :-
  forall(
    prerequisito(Disciplina, Req),
    member(Req, Cursadas)
  ).

%Função principal

trilha_valida(Aluno, MaxCreditosPorSemestre, Trilha) :-
  pegar_disciplinas_cursadas(Aluno, CursadasIniciais),
  gerar_semestres(CursadasIniciais, MaxCreditosPorSemestre, 12, Trilha).

% Gerar Semestres

gerar_semestres(Cursadas, _, _, []) :-
  pegar_pendentes(Cursadas, []).

gerar_semestres(Cursadas, MaxCreditos, LimiteSemestres, [Semestre | RestoTrilha]) :-
  
  pegar_pendentes(Cursadas, Pendentes),
  Pendentes \= [],           % Pendentes != [], ainda existem materias pendentes
  LimiteSemestres > 0,       % Limite de semestres gerados 
  
  montar_semestre(Cursadas, MaxCreditos, Semestre),
  Semestre \= [],

  append(Cursadas, Semestre, NovasCursadas),
  
  ProximoLimite is LimiteSemestres - 1,
  
  gerar_semestres(NovasCursadas, MaxCreditos, ProximoLimite, RestoTrilha).


% Montar unico semestre


montar_semestre(Cursadas, MaxCreditos, Semestre) :-
  pegar_pendentes(Cursadas, Pendentes),
  filtrar_elegiveis(Pendentes, Cursadas, Elegiveis),
  Elegiveis \= [],
  
  selecionar_disciplinas(Elegiveis, MaxCreditos, Semestre),
  Semestre \= [].


% Filtrar disciplinas elegiveis

filtrar_elegiveis([], _, []).

filtrar_elegiveis([Head | Tail], Cursadas, [Head | Resto]) :-
  prerequisitos_cumpridos(Head, Cursadas),
  filtrar_elegiveis(Tail, Cursadas, Resto).

filtrar_elegiveis([Head | Tail], Cursadas, Resto) :-
  \+ prerequisitos_cumpridos(Head, Cursadas),
  filtrar_elegiveis(Tail, Cursadas, Resto).


% Seleçao de disciplinas


selecionar_disciplinas([_ | Tail], CreditosRestantes, Resto) :-
  selecionar_disciplinas(Tail, CreditosRestantes, Resto).

selecionar_disciplinas([Head | Tail], CreditosRestantes, [Head | Resto]) :-
  pegar_credito_por_disciplina(Head, Credito),
  Credito =< CreditosRestantes,
  NovosCreditos is CreditosRestantes - Credito,
  selecionar_resto_disciplinas(Tail, NovosCreditos, Resto).


selecionar_resto_disciplinas([], _, []).

selecionar_resto_disciplinas([Head | Tail], CreditosRestantes, [Head | Resto]) :-
  pegar_credito_por_disciplina(Head, Credito),
  Credito =< CreditosRestantes,
  NovosCreditos is CreditosRestantes - Credito,
  selecionar_resto_disciplinas(Tail, NovosCreditos, Resto).

selecionar_resto_disciplinas([_ | Tail], CreditosRestantes, Resto) :-
  selecionar_resto_disciplinas(Tail, CreditosRestantes, Resto).