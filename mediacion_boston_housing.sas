*Cargado de los datos*;
proc import datafile = 'C:\Users\ASUS\Documents\tfg\Mediaci�n y moderaci�n en modelos lineales\Version Final\datos\boston_housing.csv'
 out = boston_housing
 dbms = CSV
 ;
run;

*Mediaci�n (necesaria la ejecuci�n de la macro PROCESS)*;
%process (data=boston,y=medv, x=age, m=lstat crim,
model=4, total=1, seed=15456);
