% Carrega os fatos 
:- ensure_loaded(curriculum).

% - Estrutura dos fatos

% - disciplina(nome, obrigatoria/nao, creditos, semestre).
% - prerequisito(disciplina atual, disciplina anterior).
% - prerequisito(disciplina atual, disciplina anterior).
% - aluno(nome).
% - cursou(aluno, disciplina).


pegar_todas_disciplinas(Lista) :-
  findall(Disciplina, disciplina(Disciplina, _, _, _), Lista).

pegar_disciplinas_obrigatorias(Lista) :-
  findall(Disciplina, disciplina(Disciplina, obrigatoria, _, _), Lista).

pegar_disciplinas_cursadas(Aluno, Lista) :-
  findall(Materia, cursou(Aluno, Materia), Lista).

pegar_credito_por_disciplina(Disciplina, Credito) :-
  disciplina(Disciplina, _, Credito, _).


pegar_creditos([], ListaFinal, ListaFinal).

pegar_creditos([H | T], ListaInicial, ListaFinal) :-
  pegar_credito_por_disciplina(H, Credito),
  pegar_creditos(T, [Credito | ListaInicial], ListaFinal).


somar_creditos([], 0).

somar_creditos([H | T], Soma) :-
  somar_creditos(T, SomaMais),
  Soma is H + SomaMais.


pode_cursar(Aluno, Disciplina) :-
  
  aluno(Aluno),
  disciplina(Disciplina, _, _, _),
  pegar_disciplinas_cursadas(Aluno, MateriasConcluidas),
  \+ member(Disciplina, MateriasConcluidas),
  prerequisitos_ok(Aluno, Disciplina).

% - setof/3 em vez de findall/3, por tres motivos:
% -   1. devolve a lista ORDENADA; findall devolve na ordem da busca;
% -   2. elimina duplicatas, garantindo que o resultado seja um conjunto;
% -   3. FALHA quando nao ha nenhuma solucao, em vez de devolver [].
% -      E o comportamento que queremos: consulta com aluno inexistente
% -      falha limpo, como pede a Secao 6 do enunciado.
% - Observacao: hoje pode_cursar/2 e semi-deterministico (prerequisitos_ok/2
% - usa forall/2), entao findall tambem nao geraria duplicatas. setof segue
% - preferido pela ordenacao e pela falha em lista vazia.
% - A varredura usa member/2 sobre a lista pronta de pegar_todas_disciplinas/1
% - em vez de chamar disciplina/4 dentro do setof: as variaveis livres de
% - disciplina/4 fariam o setof agrupar o resultado por tipo/creditos/semestre.
disciplinas_liberadas(Aluno, Lista) :-
  pegar_todas_disciplinas(Todas),
  setof(
    Disciplina, 
    (
      member(Disciplina, Todas),
      pode_cursar(Aluno, Disciplina)
    ), 
    Lista
  ).

% - Checa os pre-requisitos DIRETOS da disciplina, como pede o enunciado.
% - A cadeia indireta e responsabilidade da Camada 3 (prerequisito_transitivo).
% - forall/2 exige que TODOS os pre-requisitos tenham sido cursados.
% - A versao anterior usava pegar_requisitos/3, que desce um ramo da arvore
% - de pre-requisitos por vez: com backtracking bastava UM ramo completo para
% - subset/2 ter sucesso, liberando disciplina com pre-requisito faltando
% - (ex.: pode_cursar(wilson, avaliacao_desempenho_sistemas) dava true mesmo
% - sem ele ter cursado complexidade_algoritmos).
% - aluno/1 e disciplina/4 ancoram a consulta na base: sem eles o forall/2
% - passaria no vacuo para uma disciplina inexistente (que nao tem nenhum
% - fato prerequisito/2) e o predicado responderia true.
prerequisitos_ok(Aluno, Disciplina) :-

  aluno(Aluno),
  disciplina(Disciplina, _, _, _),
  forall(
    prerequisito(Disciplina, Prerequisito),
    cursou(Aluno, Prerequisito)
  ).

  
% - aluno/1 evita responder a lista completa de obrigatorias para um
% - aluno que nao existe na base.
disciplinas_pendentes(Aluno, Lista) :-

  aluno(Aluno),
  pegar_disciplinas_obrigatorias(TodasObrigatorias),
  pegar_disciplinas_cursadas(Aluno, TodasCursadas),

  subtract(TodasObrigatorias, TodasCursadas, Lista).


% - aluno/1 evita responder Total = 0 para um aluno que nao existe;
% - sem a guarda, a consulta parecia valida e devolvia zero credito.
creditos_cursados(Aluno, Total) :-

  aluno(Aluno),
  pegar_disciplinas_cursadas(Aluno, TodasCursadas),
  pegar_creditos(TodasCursadas, [], TodosCreditos),
  somar_creditos(TodosCreditos, Total).



