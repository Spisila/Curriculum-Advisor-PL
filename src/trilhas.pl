:- ensure_loaded(elegibilidade).

% prerequisito_transitivo(Disciplina, Ancestral) : fecho transitivo via recursão, todo pré-requisito direto ou indireto

% existe_ciclo(Disciplina) : verdadeiro se prerequisito_transitivo(Disciplina, Disciplina) se sustenta (base de dados malformada)

% trilha_valida(Aluno, MaxCreditosPorSemestre, Trilha) : gera, via backtracking, uma sequência de semestres
% (cada um uma lista de disciplinas) em que toda disciplina só aparece depois de seus pré-requisitos (diretos e
% indiretos) e a soma de créditos de cada semestre não ultrapassa o limite dado

prerequisito_transitivo(Disciplina, Ancestral) :-
  prerequisito(Disciplina, Ancestral).

prerequisito_transitivo(Disciplina, Ancestral) :-
  prerequisito(Disciplina, A),
  prerequisito_transitivo(A, Ancestral).


existe_ciclo(Disciplina) :-
  prerequisito_transitivo(Disciplina, Disciplina).

% trilha_valida(Aluno, MaxCreditosPorSemestre, Trilha) :-