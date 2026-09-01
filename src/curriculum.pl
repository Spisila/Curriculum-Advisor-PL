% 1 Período
disciplina(fundamentos_sistemas_ciberfisicos, obrigatoria, 4, 1).
disciplina(resolucao_problemas_logica_matematica, obrigatoria, 4, 1).
disciplina(filosofia, obrigatoria, 4, 1).
disciplina(experiencia_criativa_navegando_computacao, obrigatoria, 6, 1).
disciplina(raciocinio_algoritmico, obrigatoria, 6, 1).

% 2 Período
disciplina(resolucao_problemas_natureza_discreta, obrigatoria, 4, 2).
disciplina(arquitetura_banco_dados, obrigatoria, 6, 2).
disciplina(programacao_imperativa, obrigatoria, 4, 2).
disciplina(programacao_web, obrigatoria, 4, 2).
disciplina(conectividade_sistemas_ciberfisicos, obrigatoria, 4, 2).
disciplina(etica, obrigatoria, 2, 2).

% 3 Período
disciplina(modelagem_fenomenos_fisicos, obrigatoria, 4, 3).
disciplina(experiencia_criativa_criando_solucoes_computacionais, obrigatoria, 6, 3).
disciplina(programacao_orientada_objetos, obrigatoria, 6, 3).
disciplina(seguranca_informacao, obrigatoria, 4, 3).
disciplina(performance_sistemas_ciberfisicos, obrigatoria, 4, 3).
disciplina(clinica_tic, obrigatoria, 2, 3).

% 4 Período
disciplina(teologia_sociedade, obrigatoria, 2, 4).
disciplina(resolucao_problemas_estruturados_computacao, obrigatoria, 4, 4).
disciplina(programacao_logica_funcional, obrigatoria, 4, 4).
disciplina(big_data, obrigatoria, 4, 4).
disciplina(sistemas_operacionais_ciberfisicos, obrigatoria, 4, 4).
disciplina(redes_convergentes, obrigatoria, 4, 4).
disciplina(modelagem_sistemas_computacionais, obrigatoria, 4, 4).

% 5 Período
disciplina(complexidade_algoritmos, obrigatoria, 4, 5).
disciplina(metodos_quantitativos_computacao, obrigatoria, 4, 5).
disciplina(resolucao_problemas_grafos, obrigatoria, 6, 5).
disciplina(metodos_pesquisa_cientifica, obrigatoria, 4, 5).
disciplina(experiencia_criativa_inovando_colaborativamente, obrigatoria, 6, 5).

% 6 Período
disciplina(aprendizagem_maquina, obrigatoria, 4, 6).
disciplina(inteligencia_artificial, obrigatoria, 4, 6).
disciplina(programacao_distribuida, obrigatoria, 4, 6).
disciplina(gestao_projetos_metodos_ageis, obrigatoria, 6, 6).
disciplina(pesquisa_aplicada, obrigatoria, 4, 6).
disciplina(engenharia_software, obrigatoria, 4, 6).

% 7 Período
disciplina(construcao_interpretadores, obrigatoria, 4, 7).
disciplina(data_science, obrigatoria, 6, 7).
disciplina(construcao_software_grafico_3d, obrigatoria, 4, 7).
disciplina(cloud_computing, obrigatoria, 4, 7).
disciplina(arquitetura_software, obrigatoria, 4, 7).
disciplina(experiencia_criativa_projeto_transformador_1, obrigatoria, 4, 7).

% 8 Período
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

% PRÉ-REQUISITOS

prerequisito(resolucao_problemas_natureza_discreta, resolucao_problemas_logica_matematica).
prerequisito(arquitetura_banco_dados, raciocinio_algoritmico).
prerequisito(programacao_imperativa, raciocinio_algoritmico).
prerequisito(programacao_web, programacao_imperativa).
prerequisito(conectividade_sistemas_ciberfisicos, fundamentos_sistemas_ciberfisicos).

% 3 Período

prerequisito(modelagem_fenomenos_fisicos, resolucao_problemas_natureza_discreta).
prerequisito(experiencia_criativa_criando_solucoes_computacionais, experiencia_criativa_navegando_computacao).
prerequisito(programacao_orientada_objetos, programacao_imperativa).
prerequisito(seguranca_informacao, conectividade_sistemas_ciberfisicos).
prerequisito(performance_sistemas_ciberfisicos, conectividade_sistemas_ciberfisicos).

% 4 Período

prerequisito(resolucao_problemas_estruturados_computacao, resolucao_problemas_natureza_discreta).
prerequisito(programacao_logica_funcional, programacao_orientada_objetos).
prerequisito(big_data, arquitetura_banco_dados).
prerequisito(sistemas_operacionais_ciberfisicos, conectividade_sistemas_ciberfisicos).
prerequisito(redes_convergentes, conectividade_sistemas_ciberfisicos).
prerequisito(modelagem_sistemas_computacionais, programacao_orientada_objetos).

% 5 Período

prerequisito(complexidade_algoritmos, resolucao_problemas_estruturados_computacao).
prerequisito(metodos_quantitativos_computacao, resolucao_problemas_natureza_discreta).
prerequisito(resolucao_problemas_grafos, resolucao_problemas_estruturados_computacao).
prerequisito(metodos_pesquisa_cientifica, filosofia).
prerequisito(experiencia_criativa_inovando_colaborativamente, experiencia_criativa_criando_solucoes_computacionais).

% 6 Período

prerequisito(aprendizagem_maquina, metodos_quantitativos_computacao).
prerequisito(aprendizagem_maquina, resolucao_problemas_grafos).

prerequisito(inteligencia_artificial, complexidade_algoritmos).
prerequisito(inteligencia_artificial, programacao_logica_funcional).

prerequisito(programacao_distribuida, redes_convergentes).
prerequisito(programacao_distribuida, programacao_orientada_objetos).

prerequisito(gestao_projetos_metodos_ageis, experiencia_criativa_inovando_colaborativamente).

prerequisito(pesquisa_aplicada, metodos_pesquisa_cientifica).

prerequisito(engenharia_software, programacao_orientada_objetos).

% 7 Período

prerequisito(construcao_interpretadores, programacao_logica_funcional).
prerequisito(construcao_interpretadores, programacao_orientada_objetos).

prerequisito(data_science, big_data).
prerequisito(data_science, aprendizagem_maquina).

prerequisito(construcao_software_grafico_3d, programacao_orientada_objetos).

prerequisito(cloud_computing, programacao_distribuida).
prerequisito(cloud_computing, sistemas_operacionais_ciberfisicos).

prerequisito(arquitetura_software, engenharia_software).
prerequisito(arquitetura_software, modelagem_sistemas_computacionais).

prerequisito(experiencia_criativa_projeto_transformador_1, experiencia_criativa_inovando_colaborativamente).
prerequisito(experiencia_criativa_projeto_transformador_1, gestao_projetos_metodos_ageis).

% 8 Período

prerequisito(processamento_linguagem_natural, inteligencia_artificial).
prerequisito(processamento_linguagem_natural, data_science).

prerequisito(devops, cloud_computing).
prerequisito(devops, engenharia_software).

prerequisito(avaliacao_desempenho_sistemas, performance_sistemas_ciberfisicos).
prerequisito(avaliacao_desempenho_sistemas, complexidade_algoritmos).

prerequisito(experiencia_criativa_projeto_transformador_2, experiencia_criativa_projeto_transformador_1).

prerequisito(mundos_virtuais_realidade_misturada, construcao_software_grafico_3d).

prerequisito(visao_computacional, aprendizagem_maquina).
prerequisito(visao_computacional, construcao_software_grafico_3d).

% Eletivas

prerequisito(desenvolvendo_jogos_unity, programacao_orientada_objetos).
prerequisito(desenvolvendo_jogos_godot, programacao_orientada_objetos).
prerequisito(computacao_quantica, resolucao_problemas_natureza_discreta).


aluno(wilson).
aluno(murillo).
aluno(jose).
aluno(freitas).

%cursou(Aluno, Disciplina).

% Wilson

cursou(wilson, fundamentos_sistemas_ciberfisicos).
cursou(wilson, resolucao_problemas_logica_matematica).
cursou(wilson, filosofia).
cursou(wilson, experiencia_criativa_navegando_computacao).
cursou(wilson, raciocinio_algoritmico).

cursou(wilson, resolucao_problemas_natureza_discreta).
cursou(wilson, arquitetura_banco_dados).
cursou(wilson, programacao_imperativa).
cursou(wilson, programacao_web).
cursou(wilson, conectividade_sistemas_ciberfisicos).
cursou(wilson, etica).

cursou(wilson, desenvolvendo_jogos_unity).

cursou(wilson, modelagem_fenomenos_fisicos).
cursou(wilson, experiencia_criativa_criando_solucoes_computacionais).
cursou(wilson, programacao_orientada_objetos).
cursou(wilson, seguranca_informacao).
cursou(wilson, performance_sistemas_ciberfisicos).
cursou(wilson, clinica_tic).

% Murillo

cursou(murillo, fundamentos_sistemas_ciberfisicos).
cursou(murillo, resolucao_problemas_logica_matematica).
cursou(murillo, filosofia).
cursou(murillo, experiencia_criativa_navegando_computacao).
cursou(murillo, raciocinio_algoritmico).

cursou(murillo, resolucao_problemas_natureza_discreta).
cursou(murillo, arquitetura_banco_dados).
cursou(murillo, programacao_imperativa).
cursou(murillo, programacao_web).
cursou(murillo, conectividade_sistemas_ciberfisicos).
cursou(murillo, etica).

cursou(murillo, modelagem_fenomenos_fisicos).
cursou(murillo, experiencia_criativa_criando_solucoes_computacionais).
cursou(murillo, programacao_orientada_objetos).
cursou(murillo, seguranca_informacao).
cursou(murillo, performance_sistemas_ciberfisicos).
cursou(murillo, clinica_tic).


% Zé
cursou(jose, fundamentos_sistemas_ciberfisicos).
cursou(jose, resolucao_problemas_logica_matematica).
cursou(jose, filosofia).
cursou(jose, experiencia_criativa_navegando_computacao).
cursou(jose, raciocinio_algoritmico).

cursou(jose, resolucao_problemas_natureza_discreta).
cursou(jose, arquitetura_banco_dados).
cursou(jose, programacao_imperativa).
cursou(jose, programacao_web).
cursou(jose, conectividade_sistemas_ciberfisicos).
cursou(jose, etica).

cursou(jose, modelagem_fenomenos_fisicos).
cursou(jose, experiencia_criativa_criando_solucoes_computacionais).
cursou(jose, programacao_orientada_objetos).
cursou(jose, seguranca_informacao).
cursou(jose, performance_sistemas_ciberfisicos).
cursou(jose, clinica_tic).


% Freitas
cursou(freitas, fundamentos_sistemas_ciberfisicos).
cursou(freitas, resolucao_problemas_logica_matematica).
cursou(freitas, filosofia).
cursou(freitas, experiencia_criativa_navegando_computacao).
cursou(freitas, raciocinio_algoritmico).

cursou(freitas, resolucao_problemas_natureza_discreta).
cursou(freitas, arquitetura_banco_dados).
cursou(freitas, programacao_imperativa).
cursou(freitas, programacao_web).
cursou(freitas, conectividade_sistemas_ciberfisicos).
cursou(freitas, etica).