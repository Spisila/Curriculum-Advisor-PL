% Testes feitos durante desenvolvimento 

% 53 ?- pegar_requisitos(devops, A, B).
% B = [fundamentos_sistemas_ciberfisicos, conectividade_sistemas_ciberfisicos, redes_convergentes, programacao_distribuida, cloud_computing|A] .

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

% 73 ?- pode_cursar(jose, teologia_sociedade).
% true.

% 74 ?- disciplinas_liberadas(jose, E).
% E = [big_data, construcao_software_grafico_3d, engenharia_software, experiencia_criativa_inovando_colaborativamente, 
%     metodos_pesquisa_cientifica, metodos_quantitativos_computacao, modelagem_sistemas_computacionais, 
%     programacao_logica_funcional, redes_convergentes|…].

% O aluno Pedro cursou tudo até o 7 semestre.
% 75 ?- disciplinas_liberadas(pedro, E).
% E = [avaliacao_desempenho_sistemas, devops, experiencia_criativa_projeto_transformador_2, 
%     mundos_virtuais_realidade_misturada, processamento_linguagem_natural, visao_computacional].

% 76 ?- prerequisitos_ok(jose, devops).
% false.

% 77 ?- prerequisitos_ok(pedro, devops).
% true.

% 78 ?- disciplinas_pendentes(pedro, E).
% E = [processamento_linguagem_natural, devops, avaliacao_desempenho_sistemas, 
%     xperiencia_criativa_projeto_transformador_2, mundos_virtuais_realidade_misturada, 
%     visao_computacional].

% 79 ?- creditos_cursados(jose, E).
% E = 74.

% 80 ?- creditos_cursados(pedro, E).
% E = 188.