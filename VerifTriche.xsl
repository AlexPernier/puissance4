<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:variable name="rouge" select="count(//cellule[.='rouge'])" />
        <xsl:variable name="jaune" select="count(//cellule[.='jaune'])" />
        <xsl:variable name="ecart" select="$rouge - $jaune" />
        <xsl:choose>
            <xsl:when test="$ecart = 0 or $ecart = 1 or $ecart = -1">
                <xsl:text>L'écart entre le nombre de cellules 'Rouge' et 'Jaune' est acceptable.</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>La couleur </xsl:text>
                <xsl:choose>
                    <xsl:when test="$rouge > $jaune">Rouge</xsl:when>
                    <xsl:otherwise>Jaune</xsl:otherwise>
                </xsl:choose>
                <xsl:text> a 'triché'.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
