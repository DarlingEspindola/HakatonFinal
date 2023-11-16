$(document).ready(function () {
  //   // Datos de ejemplo
  fetch("http://localhost:8080/cliente/lista")
    .then((response) => response.json()) // Convertir la respuesta a JSON

    .then((data) => {
      console.log(data);
      const formattedData = data.map((item) => {
        const fecha = new Date(item.fechaContratacion);

        const dia = fecha.getDate().toString().padStart(2, "0");
        const mes = (fecha.getMonth() + 1).toString().padStart(2, "0");
        const anio = fecha.getFullYear();

        const fechaFormateada = `${dia}-${mes}-${anio}`;

        return {
          "Nombre Cliente": item.clienteNombre,
          "RUT Cliente": item.clienteRut,
          "Número de Cuenta": item.cuentasCliente[0]?.numeroCuentaBanco || "",
          "Monto Descuento": item.servicioCliente[0]?.montoDescuento || "",
          "Fecha Contratación": fechaFormateada, // Usar la fecha formateada
          "Nombre Producto": item.servicioCliente[0].producto.nombreProducto,
          "Código de Servicio":
            item.servicioCliente[0]?.codigoServicio_id || "",
        };
      });

      // Inicializar el DataTables con los datos formateados

      $("#myDataTable").DataTable({
        data: formattedData,
        dom: "Bfrtip",
        buttons: ["copy", "csv", "excel", "pdf", "print"],
        columns: [
          { title: "Nombre Cliente", data: "Nombre Cliente" },
          { title: "RUT Cliente", data: "RUT Cliente" },
          { title: "Número de Cuenta", data: "Número de Cuenta" },
          { title: "Monto Descuento", data: "Monto Descuento" },
          { title: "Fecha Contratación", data: "Fecha Contratación" },
          { title: "Nombre Producto", data: "Nombre Producto" },
          { title: "Código de Servicio", data: "Código de Servicio" },
        ],
      });
    })
    .catch((error) => {
      // Manejar errores si la solicitud falla
      console.error("Hubo un error al obtener los datos:", error);
    });
});
// $(document).ready(function () {
//   $("#myDataTable").DataTable({
//     dom: "Bfrtip",
//     buttons: ["copy", "csv", "excel", "pdf", "print"],
//   });
// });
// $(document).ready(function () {
//   // Datos de ejemplo
//   var datos = [
//     ["John", "Doe", 2, 5000, "Toyota", "Sí", "Sí"],
//     ["John", "Doe", 25, 10000, "Toyota", "Sí", "Sí"],
//     ["John", "Doe", 25, 5000, "Toyota", "Sí", "Sí"],
//     ["John", "Doe", 25, 2000, "Toyota", "Sí", "Sí"],
//     ["John", "Doe", 25, 20000, "Toyota", "Sí", "Sí"],
//   ];

//   // Inicializar la DataTable
//   var tabla = $("#myDataTable").DataTable({
//     dom: "Bfrtip",
//     buttons: ["copy", "csv", "excel", "pdf", "print"],
//   });

//   // Llenar la tabla con los datos
//   tabla.rows.add(datos).draw();
// });
