 proc import datafile = 'C:\Users\ASUS\Documents\tfg\Mediación y moderación en modelos lineales\datos\diamantes.csv'
 out = diamantes
 dbms = CSV

/****Moderación****/;
proc glm data=diamantes;
model price=carat table carat*table; 
run;
