<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
     xmlns:media="http://search.yahoo.com/mrss/"
     exclude-result-prefixes="media">
    <xsl:output method="html"/>  
	<xsl:template match="/">
	 <html>
	 	<head>
		<title>Uptime_frontend</title>
		<link rel="stylesheet"  type="text/css" href="style.css" /> 
		
		</head>
		<body>
			<main>
			<xsl:for-each select="rss/channel/item">
				<xsl:variable name="title" select="title" />
				<xsl:variable name="description" select="description" />
				<xsl:variable name="thumb" select="media:content/@url" />
                <div id="content">
                    <xsl:if test="media:content">
                    <div >
                        <img src="{$thumb}" alt="{$title}"/>
                    </div>
                    </xsl:if>
                    <div>
                        <div >
                            <a href="javascript:window.onclick = location.reload;"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="$title" disable-output-escaping="yes"/></a>
                        </div>
                        <div >
                            <xsl:value-of select="pubDate" />&#160;<br /><xsl:value-of select="author" />
                        </div> 
                    </div>
                    <div id="desc">
                        <xsl:value-of select="$description"/>
                </div>
			</div>	
			</xsl:for-each>
			</main>
		</body>
	 </html>
	</xsl:template>
</xsl:stylesheet>