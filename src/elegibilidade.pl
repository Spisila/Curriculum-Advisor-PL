% Carrega os fatos 
:- ensure_loaded(curriculum).

% - Ultimo "parametro" de uma "função" é o "retorno" dela

% - Estrutura dos fatos

% - disciplina(nome, obrigatoria/nao, creditos, semestre).
% - prerequisito(disciplina atual, disciplina anterior).
% - prerequisito(disciplina atual, disciplina anterior).
% - aluno(nome).
% - cursou(aluno, disciplina).


adicionar_requisito(Disciplina, ListaAtual, ListaFinal) :-
  prerequisito(Disciplina, Prerequisito),
  adicionar_requisito(Prerequisito, [Prerequisito | ListaAtual], ListaFinal).

adicionar_requisito(Disciplina, ListaAtual, ListaAtual) :-
  \+ prerequisito(Disciplina, _).

% - 1 Pegar lista de materias que o aluno fez
% - 2 Pegar lista de materias que a disciplina precisa
% - 3 Checar se os prerequisitos estão na lista de feitas

prerequisitos_ok(Aluno, Disciplina) :-
  % aluno(Aluno).
  % disciplina(Disciplina).
  findall(Materia, cursou(Aluno, Materia), MateriasConcluidas),

  adicionar_requisito(Disciplina, [], ListaRequisitos),

  % format('Concluidas = ~w~n', [MateriasConcluidas]),
  % format('Requisitos = ~w~n', [ListaRequisitos]).

  subset(ListaRequisitos, MateriasConcluidas).


pode_cursar(Aluno, Disciplina) :-

  findall(Materia, cursou(Aluno, Materia), MateriasConcluidas),
    \+ member(Disciplina, MateriasConcluidas),
  prerequisitos_ok(Aluno, Disciplina).
  


% - disciplinas_liberadas(Aluno, lista)


% - disciplinas_pendentes(Aluno, lista)


% - creditos_cursados(Aluno, total)

