nchoosek(20,4)*nchoosek(30,6) / nchoosek(50,10);
nchoosek(10,4)*20^4*30^6 / 50^10;

(nchoosek(5,2)*nchoosek(85,3) +... 
    nchoosek(5,3)*nchoosek(85,2) +...
    nchoosek(5,4)*nchoosek(85,1) +...
    nchoosek(5,5)*nchoosek(85,0)) / nchoosek(90,5);


%rng(10) rand. szám gen. fix
rand(); % 0 1 között generál számot
rand(1,5); % 1x5 tömb random számokkal
rand(2); % 2x2 mátrix random számokkal
randi(6); % 1-6 között egész
randi(0:1); % 0 vagy 1
randi(6,2,4); % (max, hánnyal, hányszor) vagyis 2x4 mátrix


N = 10^4;
k = 0; % számláló
for i = 1:N
    r1 = randi(6);
    r2 = randi(6);
    if r1 + r2 == 8
        k = k + 1;
    end
end

k / N;
5 / 36;

N = 10^4;
x = zeros(1, N);
for i = 1:N
    r1 = randi(6);
    r2 = randi(6);
    if r1 > r2
        x(i) = 1;
    end
end
cumsum(k) 
tic
y = cumsum(k) ./ (1:N) 
plot(1:N, y)
rng(1);
N = 10^7;
r = randi(6,2,N);
o = sum(r);
k = sum(o == 8);
k / N
toc

