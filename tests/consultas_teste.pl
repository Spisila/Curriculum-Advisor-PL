% Testes feitos durante desenvolvimento 

% ------- CAMADA 1 ------- 

% 7 ?- findall(Disciplina, disciplina(Disciplina, _, _, 4), E).
% E = [teologia_sociedade, resolucao_problemas_estruturados_computacao, programacao_logica_funcional, big_data, 
%      sistemas_operacionais_ciberfisicos, redes_convergentes, modelagem_sistemas_computacionais].

% ------- CAMADA 2 ------- 

% 65 ?- pegar_todas_disciplinas(E).
% E = [fundamentos_sistemas_ciberfisicos, resolucao_problemas_logica_matematica, filosofia, 
%      experiencia_criativa_navegando_computacao, raciocinio_algoritmico, resolucao_problemas_natureza_discreta,
%      arquitetura_banco_dados, programacao_imperativa, programacao_web|…].

% 66 ?- pegar_disciplinas_obrigatorias(E).
% E = [fundamentos_sistemas_ciberfisicos, resolucao_problemas_logica_matematica, filosofia, 
%      experiencia_criativa_navegando_computacao, raciocinio_algoritmico, resolucao_problemas_natureza_discreta, 
%  arquitetura_banco_dados, programacao_imperativa, programacao_web|…].

% 68 ?- pegar_disciplinas_cursadas(jose, E).
% E = [fundamentos_sistemas_ciberfisicos, resolucao_problemas_logica_matematica, filosofia, 
%      experiencia_criativa_navegando_computacao, raciocinio_algoritmico, resolucao_problemas_natureza_discreta, 
%      arquitetura_banco_dados, programacao_imperativa, programacao_web|…].

% 69 ?- pegar_credito_por_disciplina(devops, E).
% E = 4.

% 72 ?- pode_cursar(jose, devops).
% false.

% 34 ?- pode_cursar(jose, programacao_logica_funcional).
% true.

% 15 ?- disciplinas_liberadas(jose, E).
% E = [arquitetura_banco_dados, computacao_quantica, construcao_software_grafico_3d, desenvolvendo_jogos_godot, desenvolvendo_jogos_unity, 
%     engenharia_software, etica, experiencia_criativa_inovando_colaborativamente, metodos_pesquisa_cientifica|…].

% O aluno Pedro cursou tudo até o 7 semestre.
% 75 ?- disciplinas_liberadas(pedro, E).
% E = [avaliacao_desempenho_sistemas, devops, experiencia_criativa_projeto_transformador_2, 
%     mundos_virtuais_realidade_misturada, processamento_linguagem_natural, visao_computacional].

% 76 ?- prerequisitos_ok(jose, devops).
% false.

% 77 ?- prerequisitos_ok(pedro, devops).
% true.

% 8 ?- disciplinas_pendentes(jose, E).
% E = [arquitetura_banco_dados, programacao_web, etica, teologia_sociedade, resolucao_problemas_estruturados_computacao, 
%      programacao_logica_funcional, big_data, sistemas_operacionais_ciberfisicos, redes_convergentes|…].

% 78 ?- disciplinas_pendentes(pedro, E).
% E = [processamento_linguagem_natural, devops, avaliacao_desempenho_sistemas, 
%     xperiencia_criativa_projeto_transformador_2, mundos_virtuais_realidade_misturada, 
%     visao_computacional].

% 10 ?- creditos_cursados(jose, E).
% E = 62.

% 80 ?- creditos_cursados(pedro, E).
% E = 188.

% ------- CAMADA 3 ------- 

% 81 ?- prerequisito_transitivo(devops, E).  
% E = cloud_computing ;
% E = engenharia_software ;
% E = programacao_distribuida ;
% E = sistemas_operacionais_ciberfisicos ;
% E = redes_convergentes ;
% E = programacao_orientada_objetos ;
% E = conectividade_sistemas_ciberfisicos ;
% E = fundamentos_sistemas_ciberfisicos ;
% E = programacao_imperativa ;
% E = raciocinio_algoritmico ;
% E = conectividade_sistemas_ciberfisicos ;
% E = fundamentos_sistemas_ciberfisicos ;
% E = programacao_orientada_objetos ;
% E = programacao_imperativa ;
% E = raciocinio_algoritmico ;
% false.

% 106 ?- existe_ciclo(devops).
% false.

% ------- TESTE DE CICLO FEITO NO ciclo_test.pl -------

% 104 ?- existe_ciclo(ciclo_a).
% true .

% 105 ?- existe_ciclo(ciclo_b).
% true .

%107 ?- trilha_valida(jose, 26, T).
% T = 
% [
%   [arquitetura_banco_dados, programacao_web, etica, teologia_sociedade, resolucao_problemas_estruturados_computacao, programacao_logica_funcional, big_data], 
%   [sistemas_operacionais_ciberfisicos, redes_convergentes, modelagem_sistemas_computacionais, complexidade_algoritmos, metodos_quantitativos_computacao, resolucao_problemas_grafos],
%   [metodos_pesquisa_cientifica, experiencia_criativa_inovando_colaborativamente,aprendizagem_maquina, inteligencia_artificial, programacao_distribuida, pesquisa_aplicada], 
%   [gestao_projetos_metodos_ageis, engenharia_software, construcao_interpretadores, data_science, construcao_software_grafico_3d], 
%   [cloud_computing, arquitetura_software, experiencia_criativa_projeto_transformador_1, processamento_linguagem_natural|…],
%   [experiencia_criativa_projeto_transformador_2, mundos_virtuais_realidade_misturada, visao_computacional]
% ] 

% ------- TESTE trilha_valida do zero -------

% 13 ?- trilha_valida(leite, 26, E).
% E = [
%    [fundamentos_sistemas_ciberfisicos, resolucao_problemas_logica_matematica, filosofia, experiencia_criativa_navegando_computacao, raciocinio_algoritmico, etica], 
%    [resolucao_problemas_natureza_discreta, arquitetura_banco_dados, programacao_imperativa, conectividade_sistemas_ciberfisicos, experiencia_criativa_criando_solucoes_computacionais, clinica_tic], 
%    [programacao_web, modelagem_fenomenos_fisicos, programacao_orientada_objetos, seguranca_informacao, performance_sistemas_ciberfisicos, teologia_sociedade], 
%    [resolucao_problemas_estruturados_computacao, programacao_logica_funcional, big_data, sistemas_operacionais_ciberfisicos, redes_convergentes|…], 
%    [complexidade_algoritmos, metodos_quantitativos_computacao, resolucao_problemas_grafos, metodos_pesquisa_cientifica|…], 
%    [aprendizagem_maquina, inteligencia_artificial, programacao_distribuida|…], [construcao_interpretadores, data_science|…], 
%    [processamento_linguagem_natural|…]
%    ] 
