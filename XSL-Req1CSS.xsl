<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }

                    h1 {
                        color: #333;
                    }

                    a {
                        text-decoration: none;
                        color: #0099ff;
                    }

                    ul {
                        list-style-type: none;
                        padding: 0;
                    }

                    li {
                        margin-bottom: 10px;
                    }

                    h2 {
                        color: #666;
                    }

                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin-bottom: 20px;
                    }

                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                    }

                    th {
                        background-color: #f2f2f2;
                    }

th {
                        background-color: #f2f2f2;
                    }

                    form {
                        margin-bottom: 20px;
                    }

                    form label {
                        display: inline-block;
                        width: 100px;
                        margin-bottom: 5px;
                    }

                    form input[type="text"],
                    form textarea {
                        width: 300px;
                        padding: 5px;
                    }

                    form input[type="submit"] {
                        background-color: #0099ff;
                        color: #fff;
                        padding: 5px 10px;
                        border: none;
                        cursor: pointer;
                    }

                    form input[type="submit"]:hover {
                        background-color: #0077dd;
                    }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="ite/@nombre" />
                </h1>
                <p>
                    <a href="{ite/@web}">
                        Sitio web
                    </a>
                </p>
                <p>
					<a href="https://www.google.com">Enlace 2</a>
                </p>
                <h2>Información de contacto</h2>
                <ul>
                    <li>
                        Empresa: <xsl:value-of select="ite/empresa" />
                    </li>
                    <li>
                        Teléfono: <xsl:value-of select="ite/telefono" />
                    </li>
                </ul>
                <h2>Profesores</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Director</h2>
                <ul>
                    <li>
                        Nombre: <xsl:value-of select="ite/director/nombre" />
                    </li>
                    <li>
                        Despacho: <xsl:value-of select="ite/director/despacho" />
                    </li>
                </ul>
                <h2>Jefe de estudios</h2>
                <ul>
                    <li>
                        Nombre: <xsl:value-of select="ite/jefe_estudios/nombre" />
                    </li>
                    <li>
                        Despacho: <xsl:value-of select="ite/jefe_estudios/despacho" />
                    </li>
                </ul>
                <h2>Ciclos</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Decreto del título</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="grado" />
                            </td>
                            <td>
                                <xsl:value-of select="concat('Año ', decretoTitulo/@año)" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Formulario de contacto</h2>
                <form>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" />
                    <br />
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" />
                    <br />
                    <label for="mensaje">Mensaje:</label>
                    <textarea id="mensaje" name="mensaje"></textarea>
                    <br />
                    <input type="submit" value="Enviar" />
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>