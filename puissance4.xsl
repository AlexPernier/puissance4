<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/puissance4">

        <svg viewBox="-500 -500 3000 3000"
            xmlns="http://www.w3.org/2000/svg">
            <xsl:apply-templates select="rangee"/>
        </svg>
    </xsl:template>
    <xsl:template match="rangee">
        <xsl:apply-templates select="cellule"/>
    </xsl:template>
    <xsl:template match="cellule">
        <circle xmlns="http://www.w3.org/2000/svg" cx="{@nbcellule*50}" cy="{../@nbrangee*50}" r="20" stroke="black" stroke-width="3">
            <xsl:attribute name="fill">
                <xsl:choose>
                    <xsl:when test=".='yellow'">yellow</xsl:when>
                    <xsl:when test=".='red'">red</xsl:when>
                    <xsl:otherwise>grey</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </circle>
    </xsl:template>
</xsl:stylesheet>
