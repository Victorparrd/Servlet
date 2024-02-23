<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        h1 {
            text-align: center;
            color: #333;
            width: 100%;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 30px;
            width: 100%;
        }

        .button-container button {
            width: 160px;
            height: 40px;
            margin: 5px;
            background-color: #2c3e50; /* Cambio de color a azul medianoche */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-container button:hover {
            background-color: #34495e; /* Cambio de color al hacer hover */
        }

        .button-container-top {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 30px;
            width: 100%;
        }

        .button-container-top button {
            width: 160px;
            height: 40px;
            margin: 5px;
            background-color: #2c3e50; /* Cambio de color a azul medianoche */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-container-top button:hover {
            background-color: #34495e; /* Cambio de color al hacer hover */
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>MENU</h1>

        <div class="button-container-top">
            <form action="facturaForm.jsp">
                <button type="submit">Cargar Factura</button>
            </form>

            <form action="facturas.jsp">
                <button type="submit">Ver Facturas</button>
            </form>
        </div>

        <div class="button-container">
            <form action="verFacturas.jsp">
                <button type="submit">Clientes con más Facturas</button>
            </form>

            <form action="masGasto.jsp">
                <button type="submit">Clientes que más Gastaron</button>
            </form>

            <form action="monedas.jsp">
                <button type="submit">Monedas más Utilizadas</button>
            </form>

            <form action="topProveedores.jsp">
                <button type="submit">Top Proveedores</button>
            </form>
        </div>
    </div>

</body>

</html>
