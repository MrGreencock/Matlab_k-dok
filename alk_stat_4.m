
N = 10^4;
k = 0;%1: változatlan, 2: dupla, 3: fele
for i = 1:N
    petak = 1;
    for j = 1:2
        r = randi(3);
        if r == 2
            petak = petak * 2;
        elseif r == 3
            petak = petak * (1/2);
        end
    end
    k = k + petak;
end
k / N;

syms x

simplify(diff((x-1)/(x+1)))

int(x^2,x,1/4,3/4)
