 proc import datafile = 'C:\Users\ASUS\Documents\tfg\Mediaci�n y moderaci�n en modelos lineales\datos\diamantes.csv'
 out = diamantes
 dbms = CSV

/****Moderaci�n****/;
proc glm data=diamantes;
model price=carat table carat*table; 
run;
