% professor(silva).
% aluno(maria).

% relacao_professor_aluno(silva, maria).


bloco(a).
bloco(b).
bloco(c).

% [] Lista de valores 
%  sem indexação
%  [Head | Tail]
%  Tail é uma lista também, com Head e Tail também. Isso até o final

estado_inicial([
  sobre(b, a) ,
  mesa(a) , 
  mesa(c)
]).

% member = Busca um elemento em uma lista. member(Quem quer buscar, onde)
% select = Pesquisa alguma coisa e retorna todos os valores que não são aquela coisa. Retorna tudo o que não foi encontrado
% _ (underscore) = qualquer coisa
% \+ = Se o resultado depois for 1 a saida vai ser 0 independente do que vem antes. 
% | (pipe) = Concatenação de lista

livre(Bloco, Estado) :-
  bloco(Bloco) ,
  \+ member(sobre(_ , Bloco) , Estado).

na_mesa(Bloco, Estado) :-
  member( mesa(Bloco), Estado).

mover(Bloco, Origem, Destino, EstadoAtual, NovoEstado) :-
  member(sobre(Bloco, Origem), EstadoAtual) ,
  livre(Bloco, EstadoAtual) , 
  livre(Destino, EstadoAtual) ,
  select(
    sobre(Bloco, Origem), % O que esta procurando
    EstadoAtual,          % Onde esta procurando
    EstadoSemBloco        % Onde armazena a busca
  ), 
  NovoEstado = [
    sobre(Bloco, Destino)
    | EstadoSemBloco
  ].

mover_da_mesa(Bloco, Destino, EstadoAtual, NovoEstado) :-
  member(mesa(Bloco), EstadoAtual),
  livre(Bloco, EstadoAtual), 
  livre(Destino, EstadoAtual),
  select(
    mesa(Bloco),
    EstadoAtual,
    EstadoSemBloco
  ),
  NovoEstado = [
    sobre(Bloco, Destino)
    | EstadoSemBloco
  ].

mover_para_mesa(Bloco, Origem, EstadoAtual, NovoEstado) :- 
  member(sobre(Bloco, Origem), EstadoAtual), 
  livre(Bloco, EstadoAtual), 
  select(
    sobre(Bloco, Origem),
    EstadoAtual,
    EstadoSemBloco
  ),
  NovoEstado = [
    mesa(Bloco)
    | EstadoSemBloco
  ].

% acao_possivel/3 = /3 = 3 Paramenros obrigatorios.
% acao_possivel(Ação, EstadoAtual, NovoEstado)

acao_possivel( mover(B, A, C), EstadoAtual, NovoEstado ) :-
  mover(B, A, C, EstadoAtual, NovoEstado).

acao_possivel( mover_da_mesa(B, C), EstadoAtual, NovoEstado ) :-
  mover_da_mesa(B, C, EstadoAtual, NovoEstado).

acao_possivel( mover_da_mesa(B, A), EstadoAtual, NovoEstado ) :-
  mover_para_mesa(B, A, EstadoAtual, NovoEstado).

% Parada da recursão
executar(Acoes, Estado, Estado).

acoes([
    mover_da_mesa(b, c),
    mover_para_mesa(b, c)
]).

% Recursão
% Chama, pega a ação e o resto, chama ela denovo com o resto.
executar([Acao | Resto], EstadoAtual, EstadoFinal) :- 
  acao_possivel(Acao, EstadoAtual, EstadoFinal),
  executar(Resto, EstadoAtual, EstadoFinal).