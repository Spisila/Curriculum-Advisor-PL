:- ensure_loaded(curriculum).

% Funções utilitarias

pegar_todas_disciplinas(Lista) :-
  findall(Disciplina, disciplina(Disciplina, _, _, _), Lista).

pegar_disciplinas_obrigatorias(Lista) :-
  findall(Disciplina, disciplina(Disciplina, obrigatoria, _, _), Lista).

pegar_disciplinas_cursadas(Aluno, Lista) :-
  
  aluno(Aluno),

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

% Funções cursadas

pode_cursar(Aluno, Disciplina) :-
  
  aluno(Aluno),
  disciplina(Disciplina, _, _, _),

  pegar_disciplinas_cursadas(Aluno, MateriasConcluidas),
    \+ member(Disciplina, MateriasConcluidas),
  prerequisitos_ok(Aluno, Disciplina).


disciplinas_liberadas(Aluno, Lista) :-

  aluno(Aluno),

  pegar_todas_disciplinas(Todas),
  setof(
    Disciplina, 
    (
      member(Disciplina, Todas),
      pode_cursar(Aluno, Disciplina)
    ), 
    Lista
  ).


prerequisitos_ok(Aluno, Disciplina) :-

  aluno(Aluno),
  disciplina(Disciplina, _, _, _),

  forall(
    prerequisito(Disciplina, Prerequisito),
    cursou(Aluno, Prerequisito)
  ).

  
disciplinas_pendentes(Aluno, Lista) :-

  aluno(Aluno),

  pegar_disciplinas_obrigatorias(TodasObrigatorias),
  pegar_disciplinas_cursadas(Aluno, TodasCursadas),

  subtract(TodasObrigatorias, TodasCursadas, Lista).


creditos_cursados(Aluno, Total) :-

  aluno(Aluno),

  pegar_disciplinas_cursadas(Aluno, TodasCursadas),
  pegar_creditos(TodasCursadas, [], TodosCreditos),
  somar_creditos(TodosCreditos, Total).



