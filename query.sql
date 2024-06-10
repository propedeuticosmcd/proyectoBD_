CREATE DATABASE IF NOT EXISTS bdProyectoBD_215215639;

CREATE TABLE Instituciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255)
);

INSERT INTO Instituciones (nombre) VALUES
("Secretaría de Salud"),
("IMSS"),
("IMSS Bienestar"),
("ISSSTE"),
("PEMEX"),
("SEMAR"),
("Servicios Médicos Estatales"),
("Servicios Médicos Privados"),
("DIF"),
("Servicios Médicos Municipales"),
("Servicios Médicos Universitarios");


CREATE TABLE MotivosEgreso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motivo VARCHAR(255)
);

INSERT INTO MotivosEgreso (motivo) VALUES
("CURACIÓN"),
("MEJORÍA"),
("VOLUNTARIO"),
("PASE A OTRO HOSPITAL"),
("DEFUNCIÓN"),
("FUGA"),
("OTRO MOTIVO"),
("NO ESPECIFICADO");

CREATE TABLE IntervalosTiempos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    indice INT,
    intervalo VARCHAR(255)
);


INSERT INTO IntervalosTiempos (indice, intervalo) VALUES
(0, "0 Día"),
(10, "1 Día"),
(20, "2 Días"),
(30, "3 Días"),
(40, "4 Días"),
(50, "5 Días"),
(60, "6 Días"),
(70, "7 Días"),
(80, "8 Días"),
(90, "9 Días"),
(100, "10 Días"),
(110, "11 Días"),
(120, "12 Días"),
(130, "13 Días"),
(140, "14 Días"),
(150, "3 Semanas"),
(160, "1 Mes"),
(170, "1 Bimestre"),
(180, "1 Trimestre"),
(190, "1 Semestre"),
(200, "3 Trimestres"),
(210, "1 Año"),
(220, "2 Años"),
(230, "Más de 2 Años");

CREATE TABLE Sexos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sexo VARCHAR(255)
);
INSERT INTO Sexos (sexo) VALUES
("HOMBRE"),
("MUJER"),
("INTERSEXUAL"),
("NO ESPECIFICADO");

CREATE TABLE GruposEdades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    grupo_edad VARCHAR(255)
);
INSERT INTO GruposEdades (grupo_edad) VALUES
("<1 año"),
("01 a 04 años"),
("05 a 14 años"),
("15 a 44 años"),
("45 a 64 años"),
("65 y más años"),
("No Especificado");

CREATE TABLE UnidadesTiempo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    indice INT,
    unidad_tiempo VARCHAR(255)
);
INSERT INTO UnidadesTiempo (indice, unidad_tiempo) VALUES
(2, "HORAS"),
(3, "DÍAS"),
(4, "MESES"),
(5, "AÑOS"),
(9, "NO ESPECIFICADO");


CREATE TABLE EgresosaHospital
(
	id INT auto_increment PRIMARY KEY,
    claveUsuario VARCHAR(20) NOT NULL,
    fechaRegistro DATE NOT NULL,
    edadEgreso INT NOT NULL,
    diasEstancia INT NOT NULL,
	idInstitucion INT NOT NULL, 
    idMotivoEgreso INT NOT NULL,
    idIntervaloTiempos INT NOT NULL,
    idSexo INT NOT NULL,
    idGruposEdades INT NOT NULL,
    idUnidadesTiempo INT NOT NULL, 
    
    foreign key (idInstitucion) references Instituciones (id),
    foreign key (idMotivoEgreso) references MotivosEgreso (id),
    foreign key (idIntervaloTiempos) references IntervalosTiempos (id),
    foreign key (idSexo) references Sexos (id),
    foreign key (idGruposEdades) references GruposEdades (id),
    foreign key (idUnidadesTiempo) references UnidadesTiempo (id)
    
);