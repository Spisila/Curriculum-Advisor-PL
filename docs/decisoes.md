 prerequisitos_ok/2 :
  Checa os pre-requisitos DIRETOS da disciplina, como pede o enunciado. A cadeia indireta e responsabilidade da Camada 3 (prerequisito_transitivo). forall/2 exige que TODOS os pre-requisitos tenham sido cursados. A versao anterior usava pegar_requisitos/3, que desce um ramo da arvore de pre-requisitos por vez: com backtracking bastava UM ramo completo para subset/2 ter sucesso, liberando disciplina com pre-requisito faltando (ex.: pode_cursar(wilson, avaliacao_desempenho_sistemas) dava true mesmo sem ele ter cursado complexidade_algoritmos).

 Uso de setof em disciplinas_liberadas/2 :
  setof escolhido porque findall acabava colocando a mesma disciplina na lista varias vezes ja que pode cursar tem varias condições de verdade