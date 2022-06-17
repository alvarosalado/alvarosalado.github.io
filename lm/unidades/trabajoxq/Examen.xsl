<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
    <style>
body {
    background-color: slategray;
    font-family: arial;
}
a {
    color: black;
}
a:hover {
    color: darkgray;
}
  </style>
  </head>
    <body>
      <h1>Ejercicios Examen</h1>
      <nav>
              <xsl:for-each select="//ejercicio[@id='Examen']/consulta">
              <dt><a href="{concat('ejerciciosxq.html#',@id)}"><br/>
            <xsl:value-of select="@id"/></a></dt>
            <dt><xsl:value-of select="."/></dt> 
              </xsl:for-each>
      
      </nav>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
