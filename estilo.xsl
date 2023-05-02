<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>Pokedex</title>
				<link rel="stylesheet" href="css/style.css" type="text/css" />
			</head>
			<body>
				<header>
						<div class="container_header">
									<div class="logo">
										<img src="img/Pokeball.png" alt="logo pokeball"/>
									</div>
			
									<div class="menu">
										<nav>
											<ul>
											<li>Pokemon</li>
											<li>Tipos</li>
											</ul>
										</nav>
									</div>
						</div>
				</header>
				<main>
					<section class="banner_fondo">
							<div class="texto_presentacion"><xsl:value-of select="pokedex/definition"/>
							</div>
					</section>
					<section class="poderes-habilidades">
									<xsl:for-each select="/pokedex/types/type">
										
						<div class="poderes-habilidades_box">
							<img src="img/{.}_type.png" alt="imagen typo" />
							<span>a: <xsl:value-of select="types/type"/> </span> 
						</div>
									</xsl:for-each>
					</section>
					<section class="galeria-pokemones">
									<xsl:for-each select="/pokedex/pokemon">
						<div class="galeria-pokemones_box">
										<div class="galeria-pokemones_box_datos">
												
											<span>Nombre:<xsl:value-of select="species"/></span>
											<span>HP: <xsl:value-of select="baseStats/HP"/> </span>
											<span>ATK:<xsl:value-of select="baseStats/ATK"/></span>
											<span>DEF:<xsl:value-of select="baseStats/DEF"/></span>
											<span>SPED:<xsl:value-of select="baseStats/DEF"/></span>
											<span>SATK:<xsl:value-of select="baseStats/SATK"/></span>
											<img src="img/grass_type.png" alt="grass_type"/>
											<img src="img/poison_type.png" alt="poison_type"/>
											
										</div>
										<div class="galeria-pokemones_box_imagen">
											<img src="img/001.png" alt="pokemon 001"/>
										</div>
						</div>
									</xsl:for-each>

					</section>

				</main>
				<footer>
					<div class="logo">
						<img src="img/Pokeball.png" alt="logo pokeball"/>
					</div>
					<div class="logo">
						Pokedex 2023
					</div>
					<div class="logo">
						<img src="img/Pokeball.png" alt="logo pokeball"/>
					</div>
				</footer>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>