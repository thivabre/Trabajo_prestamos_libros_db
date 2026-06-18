use prestamos_libros;

delimiter //

create procedure libros_no_devueltos()
BEGIN
	SELECT l.libro_isbn, p.fecha_prestamo
    FROM libro l JOIN inter_pres_libro i ON l.libro_isbn = i.libro_isbn
    JOIN prestamo p ON i.id_prestamo = p.id_prestamo
    WHERE p.fecha_devuelto is null;
END//

call libros_no_devueltos();