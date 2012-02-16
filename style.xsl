<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="html5" encoding="utf-8" />
<xsl:template match="/">

<html>
<head>

<meta name="keywords" content="{/page/@keywordsp}" />
<meta name="description" content="{/page/@descriptionp}" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><xsl:value-of select="/page/@titrep"/> - XML et interactions</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />


</head>

<body>

<div id="wrapper">
<header>
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="index.xml">XML et interactions</a></h1>
				<p>Un langage standard au sein de l'entreprise</p>
			</div>
			<div id="menu">
				<ul>
					<xsl:choose>
					<xsl:when test="/page/@idp = 1">
					<li class="current_page_item"><a href="index.xml">Index</a></li>
					</xsl:when>
					<xsl:otherwise>
					<li><a href="index.xml">Index</a></li>
					</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
					<xsl:when test="/page/@idp = 2">
					<li class="current_page_item"><a href="partie1.xml">Le XML</a></li>
					</xsl:when>
					<xsl:otherwise>
					<li><a href="partie1.xml">Le XML</a></li>
					</xsl:otherwise>
					</xsl:choose>	

					<xsl:choose>
					<xsl:when test="/page/@idp = 3">
					<li class="current_page_item"><a href="partie2.xml">Son utilisation au sein de l'entreprise</a></li>
					</xsl:when>
					<xsl:otherwise>
					<li><a href="partie2.xml">Son utilisation au sein de l'entreprise</a></li>
					</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
					<xsl:when test="/page/@idp = 4">
					<li class="current_page_item"><a href="partie3.xml">Les perspectives d'évolution</a></li>
					</xsl:when>
					<xsl:otherwise>
					<li><a href="partie3.xml">Les perspectives d'évolution</a></li>
					</xsl:otherwise>
					</xsl:choose>					
					
				</ul>
			</div>
		</div>
	</div>
</header>

	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				<article>
					<div class="post">
						<h2 class="title"><xsl:value-of select="/page/@titrep" /></h2>
						<div style="clear: both;"> </div>
						<div class="entry">
							<xsl:for-each select="/page/paragraphe">
								<xsl:choose>
								<xsl:when test="@type = 't'">
								<p><xsl:value-of select="." /></p>
								</xsl:when>
								<xsl:otherwise>
								<p style="text-align:center;"><img alt="" src="{.}" /></p>
								</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>
							<p class="links"><a href="#"><img src="images/haut.png" alt="" /> Revenir en haut</a></p>
						</div>
					</div>
					
					<div style="clear: both;"> </div>
				</article>
				</div>

				
				<div id="sidebar">
					<nav>
					<ul>

						<li>
							<h2><a href="partie1.xml">Le XML</a></h2>
							<ul>
								<li><a href="partie1.xml#part1">La naissance du langage XML</a></li>
								<li><a href="partie1.xml#part2">Un langage séparant présentation et contenu</a></li>
								<li><a href="partie1.xml#part3">Un langage de standardisation des données</a></li>
								<li><a href="partie1.xml#part4">Les langages dérivés</a></li>
							</ul>
						</li>
						
						<li>
							<h2><a href="partie2.xml">Son utilisation au sein de l'entreprise</a></h2>
							<ul>
								<li><a href="partie2.xml#part1">Un format standard pour une interaction simplifiée</a></li>
								<li><a href="partie2.xml#part2">Un langage extensible</a></li>
								<li><a href="partie2.xml#part3">Une portabilité quasi-universelle</a></li>
								<li><a href="partie2.xml#part4">Les inconvénients de ce langage</a></li>
							</ul>
						</li>
						
						<li>
							<h2><a href="partie3.xml">Les perspectives d'évolution</a></h2>
							<ul>
								<li><a href="partie3.xml#part1">Un langage qui s'ouvre vers l'extérieur</a></li>
								<li><a href="partie3.xml#part2">Le développement des applications traitant le XML</a></li>
								<li><a href="partie3.xml#part3">La démocratisation du XML</a></li>
							</ul>
						</li>
						
					</ul>
					</nav>
				</div>

				<div style="clear: both;"> </div>
			</div>
		</div>
	</div>

</div>
<div id="footer">
	<footer><p>DEUST Webmaster - Design original : <a href="http://www.freecsstemplates.org/">Free CSS Templates</a></p></footer>
</div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>