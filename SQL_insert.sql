INSERT INTO banchile.cliente (nombre, rut) VALUES
('Juan Pérez', '12345678-9'),
('María González', '23456789-0'),
('Luis Rodríguez', '34567890-1'),
('Ana Martínez', '45678901-2'),
('Pedro Sánchez', '56789012-3'),
('Laura Fernández', '67890123-4'),
('Diego Ramírez', '78901234-5'),
('Sofía López', '89012345-6'),
('Carlos García', '90123456-7'),
('Elena Silva', '01234567-8'),

('Alejandra Castro', '13579246-8'),
('Andrés Velasco', '24681357-9'),
('Julia Flores', '98765432-1'),
('Mateo Rojas', '87654321-0'),
('Valentina Torres', '76543210-9');

INSERT INTO banchile.cuenta (cuenta_id, nombre_banco, numero_cuenta_banco, clientes_id) VALUES
(1, 'Banco de la Prosperidad', 1234567890, 1),
(2, 'Banco Central Internacional', 9876543210, 2),
(3, 'Banco del Sol', 5678901234, 3),
(4, 'Banco Elite Financiero', 1234567891, 4),
(5, 'Banco Global Empresarial', 3456789012, 5),
(6, 'Banco Innovación Financiera', 8901234567, 6),
(7, 'Banco Nacional de Desarrollo', 2345678901, 7),
(8, 'Banco Óptima Fiduciario', 7890123456, 8),
(9, 'Banco Prime Corp', 4567890123, 9),
(10, 'Banco Quantum Finance', 9012345678, 10),
(11, 'Banco XYZ', 1122334455, 11),
(12, 'Banco ABC', 9988776655, 12),
(13, 'Banco PQR', 5544332211, 13),
(14, 'Banco LMN', 3322114455, 14),
(15, 'Banco DEF', 4455667788, 15);

INSERT INTO servicio (codigo_servicio_id, fecha_contratacion, monto_descuento, clientes_id, cuenta_cuenta_id,producto_producto_id) VALUES
 (1, '2023-11-15', 150, 1, 1, 1),
 (2, '2023-10-20', 200, 2, 2, 2),
 (3, '2023-09-25', 300, 3, 3, 3),
 (4, '2023-08-30', 250, 4, 4, 1),
 (5, '2023-07-05', 180, 5, 5, 2),
 (6, '2023-06-10', 400, 6, 6, 3),
 (7, '2023-05-15', 220, 7, 7, 1),
 (8, '2023-04-20', 280, 8, 8, 2),
 (9, '2023-03-25', 350, 9, 9, 3),
 (10, '2023-02-28', 420, 10, 10, 1),
 (11, '2023-01-01', 500, 11, 11, 2),
 (12, '2022-12-10', 300, 12, 12, 3),
 (13, '2022-11-15', 270, 13, 13, 1),
 (14, '2022-10-20', 190, 14, 14, 2),
 (15, '2022-09-25', 320, 15, 15, 3);
 
 INSERT INTO producto (producto_id, nombre) VALUES
(1, 'APV'),
(2, 'MIS METAS'),
(3, 'OTROS');