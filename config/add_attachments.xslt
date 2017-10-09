<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


  <xsl:param name="csv1" />
  <xsl:param name="csv1_filename" select="'csv1.txt'" />
  <xsl:param name="csv1_encoding" select="'base64'" />
  <xsl:param name="csv2" />
  <xsl:param name="csv2_filename" select="'csv2.txt'" />
  <xsl:param name="csv2_encoding" select="'base64'" />
  <xsl:param name="csv3" />
  <xsl:param name="csv3_filename" select="'csv3.txt'" />
  <xsl:param name="csv3_encoding" select="'base64'" />
  <xsl:param name="csv4" />
  <xsl:param name="csv4_filename" select="'csv4.txt'" />
  <xsl:param name="csv4_encoding" select="'base64'" />
  <xsl:param name="csv5" />
  <xsl:param name="csv5_filename" select="'csv5.txt'" />
  <xsl:param name="csv5_encoding" select="'base64'" />

  <xsl:output method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:variable name="vars">
    <xsl:if test="$csv1"><csv name="{$csv1_filename}" encoding="{$csv1_encoding}"><xsl:value-of select="$csv1" /></csv></xsl:if>
    <xsl:if test="$csv2"><csv name="{$csv2_filename}" encoding="{$csv2_encoding}"><xsl:value-of select="$csv2" /></csv></xsl:if>
    <xsl:if test="$csv3"><csv name="{$csv3_filename}" encoding="{$csv3_encoding}"><xsl:value-of select="$csv3" /></csv></xsl:if>
    <xsl:if test="$csv4"><csv name="{$csv4_filename}" encoding="{$csv4_encoding}"><xsl:value-of select="$csv4" /></csv></xsl:if>
    <xsl:if test="$csv5"><csv name="{$csv5_filename}" encoding="{$csv5_encoding}"><xsl:value-of select="$csv5" /></csv></xsl:if>
  </xsl:variable>

  <xsl:template match="document">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <xsl:for-each select="$vars/csv" >
        <attachment encoding="{@encoding}" filename="{@name}"><xsl:value-of select="." /></attachment>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>