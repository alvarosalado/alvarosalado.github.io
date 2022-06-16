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
      <h1>Álvaro Salado Palomares - LMSGI</h1>
      <h1>Trabajo XSLT y XQUERY</h1>
      <nav>
        <xsl:for-each select="//ejercicio">
            <a href="{concat(@id, '.xml')}">
            <xsl:value-of select="@id">
            </xsl:value-of></a>
            <br/>
        </xsl:for-each>
      </nav>
    </body>  
  </html>
  </xsl:template>
</xsl:stylesheet>