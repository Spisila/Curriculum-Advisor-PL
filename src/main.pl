
:- ensure_loaded(trilhas).

demo :-

  writeln(" === Camada 1 === "),
  writeln("Lista de Alunos"),
  findall(A, aluno(A), ListaAlunos),
  writeln(ListaAlunos),
  writeln(""),

  writeln("Lista de Disciplinas"),
  findall(D, disciplina(D, _, _, _), ListaDisciplinas),
  writeln(ListaDisciplinas),
  writeln(""),
  
  writeln("Prerequisitos de Devops"),
  findall(A,prerequisito_transitivo(devops, A), Pres),
  writeln(Pres),
  writeln(""),

  writeln("Cursadas pelo Ze"),
  pegar_disciplinas_cursadas(jose, ListaCursadas),
  writeln(ListaCursadas),
  writeln(""),
  
  writeln(" === Camada 2 === "),
  
  writeln("Pedro (Cursou tudo menos o ultimo periodo) disciplinas_liberadas"),
  disciplinas_liberadas(pedro, ListaLiberadas),
  writeln(ListaLiberadas),
  writeln(""),

  writeln("Pedro disciplinas_pendentes"),
  disciplinas_pendentes(pedro, ListaPendentes),
  writeln(ListaPendentes),
  writeln(""),

  writeln("Pedro creditos_cursados"),
  creditos_cursados(pedro, CreditosCursados),
  writeln(CreditosCursados),
  writeln(""),

  writeln(" === Camada 3 === "),
  
  writeln("prerequisito_transitivo Devops"),
  findall(A,prerequisito_transitivo(devops, A), Transitivos),
  writeln(Transitivos),
  writeln(""),

  writeln("trilha_valida Ze, 26 creditos maximos"),
  trilha_valida(jose, 26, T),
  writeln(T).



