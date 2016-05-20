<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:tns4="http://iaas.uni-stuttgart.de/allowEnsembles/Route"
xmlns:ns1="http://www.allow-ensembles.com/Context"
>
	
	<xsl:template match="node()|@*">
        <xsl:copy>
          <xsl:apply-templates select="node()|@*">
       </xsl:apply-templates></xsl:copy>
 </xsl:template>
  
    <xsl:template match="@ns1:*">
       <xsl:attribute name="tns4:{local-name()}">
          <xsl:value-of select=".">
      </xsl:value-of></xsl:attribute>
    </xsl:template>
  
    <xsl:template match="ns1:*">
        <xsl:element name="tns4:{local-name()}">
            <xsl:apply-templates select="node()|@*">
       </xsl:apply-templates></xsl:element>
  </xsl:template>
  
	
	
</xsl:stylesheet>