*Cargado de los datos*;
proc import datafile = 'C:\Users\ASUS\Documents\tfg\Mediación y moderación en modelos lineales\Version Final\datos\boston_housing.csv'
 out = boston_housing
 dbms = CSV
 ;
run;

*Mediación (necesaria la ejecución de la macro PROCESS)*;
%process (data=boston,y=medv, x=age, m=lstat crim,
model=4, total=1, seed=15456);
