DROP TABLE Cuenta;
drop procedure Autenticacion_Cuenta;

CREATE TABLE Cuenta(
     Nombre_Cuenta VARCHAR(30),
     Contrasena_Cuenta VARCHAR(30),
     Autenticado INT,
     CONSTRAINT PK_Cuenta PRIMARY KEY (Nombre_Cuenta)
);

insert into cuenta (Nombre_Cuenta, Contrasena_Cuenta,Autenticado)values ('EFHIUEHcc','INJFEIF',1);
insert into cuenta (Nombre_Cuenta, Contrasena_Cuenta,Autenticado)values ('wrerwetwe','ityurur',2);
insert into cuenta (Nombre_Cuenta, Contrasena_Cuenta,Autenticado)values('ytyurtfdee','ytrubwb',7);
insert into cuenta (Nombre_Cuenta, Contrasena_Cuenta,Autenticado)values ('wtewtwaqq','stwwa4t',3);

delimiter //
CREATE procedure Autenticacion_Cuenta(in Intento_Nombre varchar(30), in Intento_Contrasena varchar(30))
	BEGIN
        SELECT 'S' existe
		INTO @variable
		FROM Cuenta
		where nombre_cuenta = Intento_Nombre and Contrasena_Cuenta = Intento_Contrasena;
        If @variable = 'S' THEN UPDATE cuenta SET Autenticado = Autenticado + 1 WHERE nombre_cuenta = Intento_Nombre and Contrasena_Cuenta = Intento_Contrasena;
		END IF;
END//
-- End of Procedure

Call Autenticacion_Cuenta('ET', 'X');

select * from cuenta;
