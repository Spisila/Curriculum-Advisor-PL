% 1º Período
disciplina(fundamentos_sistemas_ciberfisicos, obrigatoria, 4, 1).
disciplina(resolucao_problemas_logica_matematica, obrigatoria, 4, 1).
disciplina(filosofia, obrigatoria, 4, 1).
disciplina(experiencia_criativa_navegando_computacao, obrigatoria, 6, 1).
disciplina(raciocinio_algoritmico, obrigatoria, 6, 1).

% 2º Período
disciplina(resolucao_problemas_natureza_discreta, obrigatoria, 4, 2).
disciplina(arquitetura_banco_dados, obrigatoria, 6, 2).
disciplina(programacao_imperativa, obrigatoria, 4, 2).
disciplina(programacao_web, obrigatoria, 4, 2).
disciplina(conectividade_sistemas_ciberfisicos, obrigatoria, 4, 2).
disciplina(etica, obrigatoria, 2, 2).

% 3º Período
disciplina(modelagem_fenomenos_fisicos, obrigatoria, 4, 3).
disciplina(experiencia_criativa_criando_solucoes_computacionais, obrigatoria, 6, 3).
disciplina(programacao_orientada_objetos, obrigatoria, 6, 3).
disciplina(seguranca_informacao, obrigatoria, 4, 3).
disciplina(performance_sistemas_ciberfisicos, obrigatoria, 4, 3).
disciplina(clinica_tic, obrigatoria, 2, 3).

% 4º Período
disciplina(teologia_sociedade, obrigatoria, 2, 4).
disciplina(resolucao_problemas_estruturados_computacao, obrigatoria, 4, 4).
disciplina(programacao_logica_funcional, obrigatoria, 4, 4).
disciplina(big_data, obrigatoria, 4, 4).
disciplina(sistemas_operacionais_ciberfisicos, obrigatoria, 4, 4).
disciplina(redes_convergentes, obrigatoria, 4, 4).
disciplina(modelagem_sistemas_computacionais, obrigatoria, 4, 4).

% 5º Período
disciplina(complexidade_algoritmos, obrigatoria, 4, 5).
disciplina(metodos_quantitativos_computacao, obrigatoria, 4, 5).
disciplina(resolucao_problemas_grafos, obrigatoria, 6, 5).
disciplina(metodos_pesquisa_cientifica, obrigatoria, 4, 5).
disciplina(experiencia_criativa_inovando_colaborativamente, obrigatoria, 6, 5).

% 6º Período
disciplina(aprendizagem_maquina, obrigatoria, 4, 6).
disciplina(inteligencia_artificial, obrigatoria, 4, 6).
disciplina(programacao_distribuida, obrigatoria, 4, 6).
disciplina(gestao_projetos_metodos_ageis, obrigatoria, 6, 6).
disciplina(pesquisa_aplicada, obrigatoria, 4, 6).
disciplina(engenharia_software, obrigatoria, 4, 6).

% 7º Período
disciplina(construcao_interpretadores, obrigatoria, 4, 7).
disciplina(data_science, obrigatoria, 6, 7).
disciplina(construcao_software_grafico_3d, obrigatoria, 4, 7).
disciplina(cloud_computing, obrigatoria, 4, 7).
disciplina(arquitetura_software, obrigatoria, 4, 7).
disciplina(experiencia_criativa_projeto_transformador_1, obrigatoria, 4, 7).

% 8º Período
disciplina(processamento_linguagem_natural, obrigatoria, 4, 8).
disciplina(devops, obrigatoria, 4, 8).
disciplina(avaliacao_desempenho_sistemas, obrigatoria, 4, 8).
disciplina(experiencia_criativa_projeto_transformador_2, obrigatoria, 4, 8).
disciplina(mundos_virtuais_realidade_misturada, obrigatoria, 4, 8).
disciplina(visao_computacional, obrigatoria, 4, 8).

% Eletivas
disciplina(desenvolvendo_jogos_unity, eletiva, 4, 2).
disciplina(desenvolvendo_jogos_godot, eletiva, 4, 2).
disciplina(computacao_quantica, eletiva, 4, 2).

%prerequisito(Disciplina, Prerequisito).

% C -> B -> A
prerequisito(conectividade_sistemas_ciberfisicos, fundamentos_sistemas_ciberfisicos).
prerequisito(redes_convergentes, conectividade_sistemas_ciberfisicos).

aluno(wilson).
aluno(murillo).
aluno(jose).
aluno(freitas).

%cursou(Aluno, Disciplina).

cursou(wilson, raciocinio_algoritmico).
cursou(wilson, fundamentos_sistemas_ciberfisicos).
cursou(wilson, filosofia).
cursou(wilson, resolucao_problemas_logica_matematica).
cursou(wilson, desenvolvendo_jogos_unity).