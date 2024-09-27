(210/1000)*(99/100) / ((200/1000) * (98/100) + (320/1000) * (95/100) + (270/1000) * (97/100) + (210/1000) * (99/100))

p_B = [200 320 270 210] ./ 1000;
p_AB = [98 95 97 99] ./ 100;

p_AB(4)*p_B(4) / dot(p_AB, p_B);


N = 10^3;
k_B = 0;
k_AB = 0;
for i = 1:N
    d1 = randi(6);
    d2 = randi(6);
    if mod(d1 + d2,2) == 1
        k_B = k_B + 1;
        if d1 + d2 == 7
            k_AB = k_AB + 1;
        end
    end
end

k_AB / k_B

N = 10^3;
k_B = 0;
k_AB = 0;
for i = 1:N
    d1 = randi(6);
    d2 = randi(6);
    if d1 ~= d2
        k_B = k_B + 1;
        if d1 == 6 || d2 == 6 
            k_AB = k_AB + 1;
        end
    end
end
k_AB / k_B

