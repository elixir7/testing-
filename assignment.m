clc; clf; clear all

sigma = @(x) x >= 0;
g = @(t) cos(t) .* (sigma(t + pi/2) - sigma(t - pi/2));

T = pi;
t = -15:0.001:15;
x = zeros(1, length(t)); 

for n = -3:3
    x(1,:) = x(1,:) + g(t + n*T);
end

plot(t, x);
grid on;
title("$$x(t) = \sum_{n=-3}^3g(t + nT)$$", "Interpreter", "latex");
xlabel("t"); ylabel("x(t)");

aslögjalskjglasgj

%%
i = randi([-10,10], 1, 10e6);

[big_val, big_index] = big(i)

function [biggest, index] = big(x)
    biggest = -Inf;
    for i = 1:length(x)
        if x(i) > biggest
           biggest = x(i); 
           index = i;
        end
    end
end



