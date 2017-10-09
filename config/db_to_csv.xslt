<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" indent="no"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="/Results">
    <xsl:for-each select="Row[1]/*">
      <xsl:if test="position() != 1">
        <xsl:text>,</xsl:text>
      </xsl:if>
      <xsl:text>"</xsl:text>
      <xsl:value-of select="local-name()" />
      <xsl:text>"</xsl:text>
    </xsl:for-each>
    <xsl:text>&#xa;</xsl:text>
    <xsl:for-each select="Row">
      <xsl:if test="position() != 1">
        <xsl:text>&#xa;</xsl:text>
      </xsl:if>
      <xsl:for-each select="*/text()">
        <xsl:if test="position() != 1">
          <xsl:text>,</xsl:text>
        </xsl:if>
        <xsl:text>"</xsl:text>
        <xsl:value-of select="." />
        <xsl:text>"</xsl:text>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>