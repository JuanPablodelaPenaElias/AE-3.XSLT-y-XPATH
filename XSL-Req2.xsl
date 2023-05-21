<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/ite">
    <xsl:element name="ite">
      <xsl:attribute name="nombre">Instituto Tecnológico Edix</xsl:attribute>
      <xsl:attribute name="web">https://institutotecnologico.edix.com</xsl:attribute>
      <xsl:element name="empresa">Proeduca</xsl:element>
      <xsl:element name="telefono">+34 91 787 39 91</xsl:element>
      <xsl:element name="profesores">
          <xsl:element name="profesor">
            <xsl:attribute name="id">1</xsl:attribute>
            <xsl:element name="nombre">Félix</xsl:element>
          </xsl:element>
          <xsl:element name="profesor">
            <xsl:attribute name="id">2</xsl:attribute>
            <xsl:element name="nombre">Raúl</xsl:element>
          </xsl:element>
          <xsl:element name="profesor">
            <xsl:attribute name="id">3</xsl:attribute>
            <xsl:element name="nombre">Raquel</xsl:element>
          </xsl:element>
          <xsl:element name="profesor">
            <xsl:attribute name="id">4</xsl:attribute>
            <xsl:element name="nombre">Tomás</xsl:element>
          </xsl:element>
      </xsl:element>
       <xsl:element name="director">
        <xsl:attribute name="nombre">Chon</xsl:attribute>
        <xsl:element name="despacho">Numero 31, 3ª Planta, Edificio A</xsl:element>
      </xsl:element>
      
      <xsl:element name="jefe_estudios">
        <xsl:attribute name="nombre">Dani</xsl:attribute>
        <xsl:element name="despacho">Numero 27, 2ª Planta, Edificio B</xsl:element>
      </xsl:element>
      
        <xsl:element name="ciclos"> 
            <xsl:element name="ciclo">
             <xsl:element name="id">"ASIR"</xsl:element>
             <xsl:element name="nombre">Administración de Sistemas Informáticos en Red</xsl:element>
                <xsl:element name="grado">Superior</xsl:element>
                <xsl:element name="decretoTitulo">
                  <xsl:attribute name="año">2009</xsl:attribute>
             </xsl:element>
            </xsl:element>
            <xsl:element name="ciclo">
            <xsl:element name="id">"DAW"</xsl:element>
            <xsl:element name="nombre">Desarrollo de Aplicaciones Web</xsl:element>
            <xsl:element name="grado">Superior</xsl:element>
            <xsl:element name="decretoTitulo">
              <xsl:attribute name="año">2010</xsl:attribute>
            </xsl:element>
            </xsl:element>
            <xsl:element name="ciclo">
            <xsl:element name="id">"DAM"</xsl:element>
            <xsl:element name="nombre">Desarrollo de Aplicaciones Multiplataforma</xsl:element>
            <xsl:element name="grado">Superior</xsl:element>
            <xsl:element name="decretoTitulo">
              <xsl:attribute name="año">2010</xsl:attribute>
            </xsl:element>
            </xsl:element>
          </xsl:element>

    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
