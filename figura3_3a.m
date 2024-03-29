N = 100;% moléculas no lado esquerdo
nstep = 1000;
n = zeros(nstep,1);% n de moléculas do lado esquerdo em função do tempo
n(1) = 0.5*N; % Número inicial no lado esquerdo
for i = 2:nstep
r = rand(1,1)% variável aleatória da posição
if (r<n(i-1)/N)% Probabilidade menor que a proporção de moléculas na esquerda no tempo anterior 
n(i) = n(i-1) - 1 %esquerda--> direita( mais provável estar na direita)
else
n(i) = n(i-1) + 1 % direita--->esquerda, soma 1 ao numéro de moléculas do lado esquerdo
end
end
plot((1:nstep),n/N)% variação ao longo do tempo
xlabel('t'),ylabel('N/2')