<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%
    int id_factura = 0;
    Connection conn = null;
    try {
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/market";
        String usuario = "postgres";
        String contraseña = "postgres";

        conn = DriverManager.getConnection(url, usuario, contraseña);
        String sql = "SELECT MAX(id) FROM factura";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.next()) {
            id_factura = rs.getInt(1);
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        out.println("Error al obtener el último id de factura.");
    } finally {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    id_factura++; // Incrementar el último id obtenido
%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Factura</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        form p {
            margin-bottom: 15px;
        }

        form label {
            font-weight: bold;
        }

        form input[type="text"],
        form input[type="date"] {
            width: calc(100% - 10px);
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }

        form button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #2c3e50;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>FORMULARIO FACTURA</h1>
    <form action="Factura" method="POST">
        <p><label>ID Factura:</label><input type="text" name="id" value="<%= id_factura %>"></p>
        <p><label>Fecha Emisión:</label><input type="date" name="fecha_emision"></p>
        <p><label>Fecha Vencimiento:</label><input type="date" name="fecha_vencimiento"></p>
        <p><label>Cliente ID:</label><input type="text" name="cliente_id"></p>
        <p><label>Factura Tipo ID:</label><input type="text" name="factura_tipo_id"></p>
        <p><label>Moneda ID:</label><input type="text" name="moneda_id"></p>
        <button type="submit">Enviar</button>
    </form>

</div>

</body>
</html>
