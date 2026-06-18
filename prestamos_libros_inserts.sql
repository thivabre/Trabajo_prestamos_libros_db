use prestamos_libros;

insert into autor (nombre_autor, ape_autor)
values 
("Maria", "Walsh"),
("Juan", "Jose"),
("Marcos", "Perez"),
("Jose", "Hernandez"),
("Pepe", "Perez");

insert into libro (titulo_libro, id_autor)
values
("La historia del sapo azul", 1),
("Una zanahoria feliz", 2),
("El avestruz", 3),
("Al rededor de la luna", 4),
("Las estrellas y el infinito", 5);

insert into usuario (carnet_usuario, nombre_usuario)
values
("111UIO", "Mariano"),
("4376HS", "Paula"),
("09OPDS", "Josefa"),
("6734UD", "Luis"),
("1MKIDA", "Mario");

insert into prestamo (fecha_prestamo, fecha_devuelto, cantidad_libros, carnet_usuario)
values
("2025-03-01", Null, 1, "111UIO"),
("2025-03-01", "2025-03-05", 2, "111UIO"),
("2025-03-01", Null, 2, "4376HS"),
("2025-03-01", "2025-03-07", 1, "09OPDS");

insert into inter_pres_libro (id_prestamo, libro_isbn)
values
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(4, 4);