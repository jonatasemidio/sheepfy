<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta name="layout" content="main"/>
	</head> 


	<body>
	
		<div class="container">
			<div class="intro">
				<h2>Sheepfy</h2><br/>
				<h3>Buy what you want in a Sheep way!</h3><br/>

				<div class="divider-2"></div>
				<p><g:link controller="userSheep"><img src="${resource(dir: 'images', file: 'f1.png')}" alt="" /></g:link></p>

			</div>
			<div class="divider-2"></div>
			<div class="top-features">
				<hr/>
				<h3>Top Features ...</h3>
				<div class="inset-top"></div>
				<div class="inset">
					<div class="row"><!--Start of Row-->
						
						<div class="col"><!--Start of Feature-->
							<div class="feature-image">
								<div class="mask-container-thumbnail">
									<img src="${resource(dir: 'images', file: 'porco.png')}" alt="" />
									<div class="mask-gloss-thumbnail"></div>
								</div>
							</div>
							<div class="description">
								<h4>Do Not Spend money</h4>
								<p>Buy what you want in a Sheep way!</p>
							</div>
						</div><!--End of Feature-->
						
						<div class="col"><!--Start of Feature-->
							<div class="feature-image">
								<div class="mask-container-thumbnail">
									<img src="${resource(dir: 'images', file: 'carta.png')}" alt="" />
									<div class="mask-gloss-thumbnail"></div>
								</div>
							</div>
							<div class="description">
								<h4>Read what metters!</h4>
								<p>Receive in your email box just what metter!</p>
							</div>
						</div><!--End of Feature-->
						
						<br class="clear" />
					</div><!--End of Row-->
					
					<div class="row"><!--Start of Row-->
						
						<div class="col"><!--Start of Feature-->
							<div class="feature-image">
								<div class="mask-container-thumbnail">
									<img src="${resource(dir: 'images', file: 'lupa.png')}" alt="" />
									<div class="mask-gloss-thumbnail"></div>
								</div>
							</div>
							<div class="description">
								<h4>You don't need to search!</h4>
								<p>why search if you can be found?</p>
							</div>
						</div><!--End of Feature-->
						
						<div class="col"><!--Start of Feature-->
							<div class="feature-image">
								<div class="mask-container-thumbnail">
									<img src="${resource(dir: 'images', file: 'gift.png')}" alt="" />
									<div class="mask-gloss-thumbnail"></div>
								</div>
							</div>
							<div class="description">
								<h4>It's Easy</h4>
								<p>Just say to the sheep what you want!</p>
							</div>
						</div><!--End of Feature-->
						
						<br class="clear" />
					</div><!--End of Row-->
					
										
				</div>
				<div class="inset-btm"></div>
			</div>
			<hr/>
			<div class="About">
				<h3>Testimonials ...</h3>
				
				<div class="quote"><!--Start of Quote-->
					<img src="${resource(dir: 'images', file: 'quotation-mark.png')}" alt="quotation mark" class="quotation-mark" />
					<p>Here you really get what you want!!</p>
					
					<p><strong>Jonatas Emidio</strong></p>
				</div><!--End of Quote-->
				
				<div class="quote"><!--Start of Quote-->
					<img src="${resource(dir: 'images', file: 'quotation-mark.png')}" alt="quotation mark" class="quotation-mark" />
					<p>This is for people that hate spend money.</p>
					
					<p><strong>Jonatas Emidio</strong></p>
				</div><!--End of Quote-->
				
				<br class="clear" />
				
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