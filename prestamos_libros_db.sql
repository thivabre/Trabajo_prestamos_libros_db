drop database prestamos_libros;
create database prestamos_libros;
use prestamos_libros;

create table autor(
	id_autor int not null auto_increment,
    nombre_autor varchar(30) not null,
    ape_autor varchar(30) not null,
    constraint primary key(id_autor)
);

create table libro(
	libro_isbn INT(13) not null auto_increment,
    titulo_libro varchar(60) not null,
    id_autor int not null unique,
    constraint primary key(libro_isbn),
    foreign key (id_autor) references autor(id_autor)
);

create table usuario(
	carnet_usuario varchar(80) not null,
    nombre_usuario varchar(60) not null,
    constraint primary key(carnet_usuario)
);

create table prestamo(
	id_prestamo int not null auto_increment,
    fecha_prestamo date not null,
    fecha_devuelto date null,
    cantidad_libros int not null,
    carnet_usuario varchar(80) not null,
    constraint primary key(id_prestamo),
    foreign key (carnet_usuario) references usuario(carnet_usuario)
);

create table inter_pres_libro(
	id_prestamo int not null,
    libro_isbn int(13) not null,
    constraint primary key(id_prestamo, libro_isbn),
    foreign key (id_prestamo) references prestamo(id_prestamo),
    foreign key (libro_isbn) references libro(libro_isbn)
);