# Lógica Funcional

Este projeto em Prolog modela um currículo acadêmico com disciplinas, pré-requisitos, elegibilidade de alunos e geração de trilhas de matrícula.

## Estrutura do projeto

```
logica/
├── README.md
├── docs/
│   └── decisoes.md
├── src/
│   ├── curriculum.pl
│   ├── elegibilidade.pl
│   ├── main.pl
│   └── trilhas.pl
└───tests/
    └── consultas_teste.pl
```

## Descrição das pastas

- `docs/decisoes.md`: decisões de modelagem, regras assumidas e limitações conhecidas.
- `src/curriculum.pl`: fatos sobre disciplinas, alunos, histórico de cursos e pré-requisitos.
- `src/elegibilidade.pl`: regras para verificar o que o aluno pode cursar no momento.
- `src/trilhas.pl`: lógica de recursão, pré-requisitos transitivos e geração de trilhas válidas.
- `src/main.pl`: ponto de entrada para consultas e demonstrações.
- `tests/consultas_teste.pl`: testes com consultas esperadas.

## Como executar

No diretório do projeto, abra o SWI-Prolog e carregue os módulos desejados:

```prolog
?- [src/curriculum.pl].
?- [src/elegibilidade.pl].
?- [src/trilhas.pl].
?- [src/main].
```

## Exemplos de consultas

```prolog
?- pode_cursar(joao, programacao_imperativa).
?- disciplinas_liberadas(joao, Lista).
?- creditos_cursados(pedro, Total).
?- trilha_valida(jose, 24, Trilha).
```

## Objetivo

O projeto simula a lógica de matrícula considerando:

- pré-requisitos diretos e indiretos;
- disciplinas obrigatórias e eletivas;
- histórico do aluno;
- limitações de créditos por semestre;
- geração de uma trilha acadêmica válida.

Este é um projeto acadêmico para estudo de lógica em Prolog e modelagem de regras de currículo.