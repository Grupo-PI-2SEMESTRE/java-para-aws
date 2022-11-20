create database safespacemysql;
use safespacemysql;

create table Funcionarios(
		idFunc int primary key auto_increment,
		email varchar(90),
		senha varchar(20)
	);

  create table Hardwares(
		idHardware int primary key auto_increment,
        nomeHardware varchar(20),
        unidadeMedida VARCHAR(10)
        );


    insert into Hardwares values
    (null, "Ram", "GB"),
    (null, "Cpu", "GHz"),
    (null, "Disco", "GB");
    
create table Registros(
idRegistro int primary key auto_increment,
dtHora datetime default current_timestamp,
valorUtilizado Double,
fkFuncionario int,
foreign key (fkFuncionario) references Funcionarios(idFunc),
fkHardware int,
foreign key (fkHardware) references Hardwares(idHardware)
);

