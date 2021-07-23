open Dane_2021L.mat

Y_PL = ans.values_PL;
Y_NE = ans.values_Netherlands;

% Zadanie 1

% Przyrosty bezwzględne
diff_PL = diff(Y_PL);
diff_NE = diff(Y_NE);

% Przyrosty względne
diff_rel_PL = diff(Y_PL) / Y_PL(1);
diff_rel_NE = diff(Y_NE) / Y_NE(1);
    
% Przyrosty logarytmiczne
diff_log_PL = diff(log(Y_PL));
diff_log_NE = diff(log(Y_NE));

% Średnia arytmetyczna
mean_PL = mean(Y_PL);
mean_NE = mean(Y_NE);

% Odchylenie standardowe
std_PL = std(Y_PL);
std_NE = std(Y_NE);

% Wykresy
plot(diff_PL)
title('Przyrosty bezwzględne dla Polski')

plot(diff_NE)
title('Przyrosty bezwzględne dla Holandii')

plot(diff_rel_PL)
title('Przyrosty względne dla Polski')

plot(diff_rel_NE)
title('Przyrosty względne dla Holandii')

plot(diff_log_PL)
title('Przyrosty logarytmiczne dla Polski')

plot(diff_log_NE)
title('Przyrosty logarytmiczne dla Holandii')

boxplot(Y_PL)

boxplot(Y_NE)

% Zadanie 2
X_PL = 1:384;
par_PL = polyfit(X_PL,Y_PL,1);
newY_PL = polyval(par_PL,X_PL);
plot(1:384, Y_PL, 'bo') 
hold on 
plot(1:384, newY_PL, 'r-')

X_NE = 1:397;
par_NE = polyfit(X_NE,Y_NE,1);
newY_NE = polyval(par_NE,X_NE);
plot(1:397, Y_NE, 'bo') 
hold on 
plot(1:397, newY_NE, 'r-');

% Dokładniejsza aproksymacja jest dla Holandii.

% Zadanie 3
smooth_5_PL = smooth(Y_PL, 5);
plot(smooth_5_PL)
hold on 
plot(1:384, Y_PL, 'r-');

smooth_22_PL = smooth(Y_PL, 22);
plot(smooth_22_PL)
hold on 
plot(1:384, Y_PL, 'r-');

smooth_5_NE = smooth(Y_NE, 5);
plot(smooth_5_NE)
hold on 
plot(1:397, Y_NE, 'r-');

smooth_22_NE = smooth(Y_NE, 22);
plot(smooth_22_NE)
hold on 
plot(1:397, Y_NE, 'r-');

% Najmniejszy błąd jest dla danych z Polski i stałej k = 5

% Zadanie 4
Y_PL_100 = Y_PL(284:384);
Y_NE_100 = Y_NE(297:397);

par_s1_PL_100 = polyfit(1:size(Y_PL_100),Y_PL_100,1);
plot(par_s1_PL_100)

par_s2_PL_100 = polyfit(1:size(Y_PL_100),Y_PL_100,2);
plot(par_s2_PL_100)

par_s3_PL_100 = polyfit(1:size(Y_PL_100),Y_PL_100,3);
plot(par_s3_PL_100)






