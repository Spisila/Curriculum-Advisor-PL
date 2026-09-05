## Read Me 

logica/
├── src/
│ ├── curriculum.pl (Camada 1: fatos)
│ ├── elegibilidade.pl (Camada 2: regras)
│ ├── trilhas.pl (Camada 3: recursao + backtracking)
│ └── main.pl (consultas de demonstracao, demo/0)
├── tests/
│ └── consultas_teste.pl (baterias de consulta com resultado esperado)
├── docs/
│ └── decisoes.md (decisoes de modelagem + limitacoes conhecidas)
└── README.md (como carregar e consultar o projeto)

- Camada 1 = Fatos
  - Disciplina(Nome, Tipo, Creditos, SemestreSugerido) : Tipo {obrigatoria, eletiva}
  - prerequisito(Disciplina, prerequisito) : um fato por par Disciplina/prerequisito (uma Disciplina pode ter vários fatos)
  - cursou(Aluno, Disciplina) : histórico de cada Aluno fictício de teste
  - No minimo 20 Disciplinas, cobrindo pelo menos 6 semestres sugeridos e incluindo pelo menos 3 eletivas
  - Pelo menos uma cadeia de prerequisitos com profundidade igual ou maior que 3 (D depende de C, que depende de B, que depende de A)
  - Pelo menos 3 Alunos fictícios de teste, com perfis diferentes: um adiantado, um no ritmo normal da grade, e um atrasado ou com histórico de trancamento
- Camada 2 = Regras de elegibilidade : Deriva a partir dos fatos da Camada 1, o que cada Aluno pode fazer agora, sem olhar para o futuro
  - [x] prerequisitos_ok(Aluno, Disciplina) : verdadeiro se todos os prerequisitos diretos ja foram cursados
  - [x] pode_cursar(Aluno, Disciplina) : elegivel e ainda não cursada (usa negação por falha)
  - [ ] Disciplinas_liberadas(Aluno, lista) : todas as Disciplinas que pode_cursar agora, via findall ou setof
  - [ ] Disciplinas_pendentes(Aluno, lista) : todas as obrigatorias ainda nao cursadas, independentemente de elegibilidade
  - [ ] creditos_cursados(Aluno, total) : soma dos creditos de tudo que o Aluno ja cursou
  (pelo menos um uso correto de \+ (negação por falha))
  (pelo menos um uso correto de forall/ (negação por falha))
  (pelo menos um uso correto de findall/3 ou setof/3 (negação por falha)). Justificar diferença sempre que setof for escolhido
Camada 3 = Recursão e busca
  - prerequisito_transitivo(Disciplina, ancestral) : fecho transitivo via recursão, todo prerequisito direto ou indireto
  - existe_ciclo(Disciplina) : verdadeiro se prerequisito_transitivo(Disciplina, Disciplina) se sustenta(base de dados malformada)
  - trilha_valida(Aluno, MaxCreditosPorSemestre, Trilha) : 
    - gera uma sequência de semestres(cada um uma lista de disciplinas) em que toda disciplina só aparece depois de seus pré-requisitos (diretos e indiretos)
    - e a soma de créditos de cada semestre não ultrapassa o limite dado
    - busca em trilha_valida precisa ter um limite máximo de semestres simulados (12)
      - Obter uma trilha válida (única chamada, ou findall com o primeiro resultado)
      - Deve ser possível enumerar MÚLTIPLAS trilhas válidas para o mesmo aluno (via findall/bagof), respeitando o limite de semestres