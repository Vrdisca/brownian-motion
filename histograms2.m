%arquivo depende da função prob, formato  .mlx
%prob.mlx file
clc;
clear;
close all;
N = 10; 
n_values = 0:10;
probabilities = zeros(size(n_values));

% Na Probabilidade para cada valor de n, é usada a função prob de
% outro arquivo
for i = 1:length(n_values)
    if n_values(i) <= N
        probabilities(i) = prob(N, n_values(i));
    else
        probabilities(i) = 0;
end
end
figure;
bar(n_values, probabilities, 'barwidth', 0.5, 'FaceColor', [0.5, 0.7, 1]);
title("N=",N);
xlabel('n');
ylabel('p');
grid on;
