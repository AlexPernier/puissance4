<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/puissance4">
    <xsl:for-each select="rangee">
      <xsl:variable name="currentRow" select="position()"/>
      <xsl:for-each select="cellule">
        <xsl:variable name="currentCell" select="position()"/>
        <xsl:if test=". = 'rouge' or . = 'jaune'">
          <xsl:if test="../following-sibling::rangee[1]/cellule[position() = $currentCell] = 'vide'">
            Il y a une cellule vide en dessous.
          </xsl:if>
        </xsl:if>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
