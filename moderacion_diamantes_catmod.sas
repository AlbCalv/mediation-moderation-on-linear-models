*Cargado de los datos*;
proc import datafile = 'C:\Users\ASUS\Documents\tfg\Mediación y moderación en modelos lineales\datos\diamantes.csv'
 out = diamantes
 dbms = CSV
 ;
run;

*Creación de los productos cruzados para las categorías cut="Fair" y cut"Premium";
data diamantes;
set diamantes;
d1=(cut="Fair");
d2=(cut="Premium");
crossp1=carat*d1;
crossp2=carat*d2;
run;

*Moderación categórica con cut="Good" como categoría base";
proc reg data=diamantes;
model price=d1 d2 carat crossp1 crossp2;
test crossp1=0,crossp2=0;
run;


