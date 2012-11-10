<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta name="layout" content="main"/>
	</head> 


	<body>
	
		<div class="container ">
			<div class="intro">
				<div class="divider-2"></div>
				<div class="border-shadow">
					<h3><label for="name">Profile</label></h3><hr/> 	
					<div class=" ${hasErrors(bean: userSheepInstance, field: 'name', 'error')} required">
						<label for="name">
							<g:message code="userSheep.name.label" default="Name" />:
						</label>
						${userSheepInstance?.name} Jonatas Emidio
					</div>
					<br/>
					<div class=" ${hasErrors(bean: userSheepInstance, field: 'email', 'error')} required">
						<label for="password">
							<g:message code="userSheep.email.label" default="Email" />:
						</label>
						${userSheepInstance?.email} jonatasemidio@gmail.com
					</div>
					<br/><br/><br/>
					<g:link controller="product" action="create"><img src="${resource(dir: 'images', file: 'plus.png')}" title="new prduct"></g:link>

				</div>

				<br/>
				<hr/>
				<br/>


				<div class="border-shadow">
					<h3><label for="name">My Product List</label></h3><hr/> 
					<div class=" required">
						<label for="name">
							<g:link controller="product" action="create"><img src="${resource(dir: 'images', file: 'xbox.png')}" title="new prduct"></g:link>
						</label>
							<h3>XBOX 360</h3>
						<hr/>
					</div>
					<div class=" required">
						<label for="name">
							<g:link controller="product" action="show"><img src="${resource(dir: 'images', file: 'gb.png')}" title="new prduct"></g:link>
						</label>
						<h3>Game Boy</h3>
						<hr/>
					</div>

					<div class=" required">
						<label for="name">
							<g:link controller="product" action="create"><img src="${resource(dir: 'images', file: 'gc.png')}" title="new prduct"></g:link>
						</label>
						<h3>Game Cube</h3>
						<hr/>
					</div>

				</div>

				<g:if test="${products}">
					<div class="border-shadow">
						<p><label for="name">Products</label></p><hr/> 	
						<g:each in="${products}">
							<g:link controller="product" action="show" id="1">
								<div class="border-shadow">
									Name: ${it.name}
								</div>
							</g:link>
						</g:each>
					</div>
			    </g:if>






			</div>
		</div>
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script type="text/javascript" src="nivoslider/jquery.nivo.slider.pack.js"></script>
		<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
		<script type="text/javascript" src="fancybox/jquery.easing-1.4.pack.js"></script>
		<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
		
		<script type="text/javascript">
		$(window).load(function() {
		    $('#slider').nivoSlider();
		});
		</script>
		
		<script type="text/javascript">
				$(window).load(function() {
				    $("*[rel=fancybox]").fancybox();
				});
		</script>
		
	
	</body>

</html>