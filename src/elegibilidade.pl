% Carrega os fatos 
:- ensure_loaded(curriculum).

% - Estrutura dos fatos

% - disciplina(nome, obrigatoria/nao, creditos, semestre).
% - prerequisito(disciplina atual, disciplina anterior).
% - prerequisito(disciplina atual, disciplina anterior).
% - aluno(nome).
% - cursou(aluno, disciplina).


pegar_requisitos(Disciplina, ListaAtual, ListaFinal) :-
  prerequisito(Disciplina, Prerequisito),
  pegar_requisitos(Prerequisito, [Prerequisito | ListaAtual], ListaFinal).

pegar_requisitos(Disciplina, ListaAtual, ListaAtual) :-
  \+ prerequisito(Disciplina, _).


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

  pegar_disciplinas_cursadas(Aluno, MateriasConcluidas),
    \+ member(Disciplina, MateriasConcluidas),
  prerequisitos_ok(Aluno, Disciplina).

% - setof escolhido porque findall acabava colocando a -
% - mesma disciplina na lista varias vezes ja que -
% - pode cursar tem varias condições de verdade
disciplinas_liberadas(Aluno, Lista) :-
  disciplinas_pendentes(Aluno, Pendentes),
  setof(
    Disciplina, 
    (
      member(Disciplina, Pendentes),
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
prerequisitos_ok(Aluno, Disciplina) :-

  forall(
    prerequisito(Disciplina, Prerequisito),
    cursou(Aluno, Prerequisito)
  ).

  
disciplinas_pendentes(Aluno, Lista) :-

  pegar_disciplinas_obrigatorias(TodasObrigatorias),
  pegar_disciplinas_cursadas(Aluno, TodasCursadas),

  subtract(TodasObrigatorias, TodasCursadas, Lista).


creditos_cursados(Aluno, Total) :-

  pegar_disciplinas_cursadas(Aluno, TodasCursadas),
  pegar_creditos(TodasCursadas, [], TodosCreditos),
  somar_creditos(TodosCreditos, Total).



