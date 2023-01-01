@extends('layouts.master')

@section('content')


	
  <!--========================= we-do-section start========================= -->
	<section id="features" class="feature-section">
	    <div class="container">
	      <div class="row justify-content-center">
	        <div class="col-xxl-6 col-xl-7 col-lg-8 col-md-11">
	          <div class="section-title text-center mb-60">
	            <h2 class="mb-20">Ce que nous fournissons pour l'expédition de vos colis </h2>

	            <p>L’expertise des Services de notre établissement vous garantit encore mieux.</p>
	          </div>
	        </div>
	      </div>
	      <div class="row">


	      	@foreach ($valeurs as $row)
				{{-- expr --}}
				
			    <div class="col-lg-4 col-md-6">
		          <div class="single-feature">
		            <div class="feature-icon">
		              {{-- <i class="lni lni-display"></i> --}}
		              <img src="{{ asset('fichier/'.$row->photo) }}" alt="">
		            </div>
		            <div class="feature-content">
		              <h4>{{$row->nom}}</h4>
		              <p>{{$row->description}}</p>
		            </div>
		          </div>
		        </div>
			@endforeach
				

	       
	      </div>
	    </div>
	</section>
	<!--========================= we-do-section start========================= -->


	{{-- mot d'accroche un --}}
	<section id="feature-1" class="feature-section-1 mt-60 pt-40">
	    <div class="container">
	      <div class="row align-items-center">
	        <div class="col-lg-6 order-last order-lg-first">
	          <div class="feature-image text-center text-lg-start">
	            <img src="{{ asset('dev2/assets/images/feature/feature-image-1.svg') }}" alt="">
	          </div>
	        </div>
	        <div class="col-lg-6 col-md-10">
	          <div class="feature-content-wrapper">
	            <div class="section-title">
	              <h2 class="mb-20">Abonnez-vous à notre newsletter</h2>
	              <p class="mb-30">Dévenez à présent Abonné et recevez les newsletter régulièrement</p>

	             	<div class="support d-flex">
						<div class="support-icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="57.473" height="56.533" viewBox="0 0 57.473 56.533">
								<g id="noun_customer_service_2786300" data-name="noun_customer service_2786300"
									transform="translate(-11.49 -12.11)">
									<path id="Path_94" data-name="Path 94"
										d="M65.1,36.746a3.769,3.769,0,0,0-.485.052v-.209a3.858,3.858,0,0,0-2.746-3.664,21.6,21.6,0,0,0-43.166-.037,3.858,3.858,0,0,0-2.873,3.732v.209a3.769,3.769,0,0,0-.485-.052,3.866,3.866,0,0,0-3.858,3.858v7.515a3.866,3.866,0,0,0,3.858,3.858,3.732,3.732,0,0,0,.485-.052v.209a3.858,3.858,0,1,0,7.709,0V36.589a3.732,3.732,0,0,0-.037-.4V33.671a16.792,16.792,0,0,1,33.584,0v1.851a3.784,3.784,0,0,0-.164,1.037V52.172a3.829,3.829,0,0,0,.082.784c-1.1,2.463-4.254,8.426-9.56,10.075a4.023,4.023,0,1,0,.246,2.4c5.15-1.4,8.821-6.1,10.836-10.127a3.821,3.821,0,0,0,2.239.746,3.866,3.866,0,0,0,3.858-3.858v-.231a3.73,3.73,0,0,0,.485.052,3.866,3.866,0,0,0,3.851-3.858V40.6A3.866,3.866,0,0,0,65.1,36.746Z"
										fill="#00adb5" />
									<path id="Path_95" data-name="Path 95"
										d="M35.595,41.324a5.97,5.97,0,0,1,1.59-4.478,4.858,4.858,0,0,1,3.6-1.358,4.627,4.627,0,0,1,3.485,1.53A5.052,5.052,0,0,1,45.715,40.6a9.866,9.866,0,0,1-.94,4.321,29.853,29.853,0,0,1-2.4,3.732q-.507.746-1.493,2.239l-.6.873q-.545.828-.813,1.306a1.1,1.1,0,0,0-.134.284h6.127v3.06H35.55V53.564a6.716,6.716,0,0,1,.694-1.134q.306-.485.7-1.067l.806-1.179q.746-.978,2.239-3.12a20.9,20.9,0,0,0,2.142-3.642,6.859,6.859,0,0,0,.582-2.746,2.463,2.463,0,0,0-.53-1.6,1.843,1.843,0,0,0-1.493-.694,1.918,1.918,0,0,0-1.843,1.493,3.4,3.4,0,0,0-.179,1.216v.746H35.595Z"
										transform="translate(-6.104 -5.93)" fill="#00adb5" />
									<path id="Path_96" data-name="Path 96"
										d="M49.37,48.893l5.5-13.083h3.12V48.893h2v3.142h-2v4.478H54.87V52.035h-5.5Zm5.5,0V42.46L52.3,48.893Z"
										transform="translate(-9.61 -6.012)" fill="#00adb5" />
								</g>
							</svg>
						</div>
						<h5> <span>Urgence d'expédition</span> Service 24/24</h5>
					</div>

	              <a href="/contact" class="main-btn btn-hover">Abonnez-vous</a>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
	{{-- fin  --}}

	<!--========================= service-section start ========================= -->
	<section id="services" class="service-section pt-50">
		<div class="shape shape-3">
			<img src="{{ asset('dev/assets/img/shapes/shape-3.svg') }}" alt="">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-8 mx-auto">
					<div class="section-title text-center mb-55">
						<span class="wow fadeInDown" data-wow-delay=".2s">Services</span>
						<h2 class="mb-15 wow fadeInUp" data-wow-delay=".4s">Nos services quotidiens</h2>
						<p class="wow fadeInUp" data-wow-delay=".6s">
							Les Services sur lesquels nous nous appuyons pour satisfaire nos clients et nos partenaires.
						</p>
					</div>
				</div>
			</div>
			<div class="row">

				@foreach ($services as $row)
					{{-- expr --}}
					<div class="col-lg-4 col-md-6">
						<div class="service-item mb-30">
							<div class="service-icon mb-25">
								<div class="we-do-icon mb-25 text-center">
									<img src="{{ asset('fichier/'.$row->photo) }}" style="width: 100px; height: 100px; border-radius: 100%;" alt="">
								</div>
							</div>
							<div class="service-content">
								<h4>{{$row->nom}}</h4>
								<p>{{$row->titre}}</p>
								<a href="/service/{{$row->id}}" class="read-more">Lire la suite <i class="lni lni-arrow-right"></i></a>
							</div>
							<div class="service-overlay img-bg"></div>
						</div>
					</div>
				@endforeach
				


			
			</div>
		</div>
	</section>
	<!--========================= service-section end ========================= -->




	<!-- ========================= blog-section start ========================= -->
	<section id="blog" class="blog-section pt-50">
		<div class="shape shape-7">
			<img src="{{ asset('dev/assets/img/shapes/shape-6.svg') }}" alt="">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-8 mx-auto">
					<div class="section-title text-center mb-55">
						<span class="wow fadeInDown" data-wow-delay=".2s">Article de blog</span>
						<h2 class="mb-15 wow fadeInUp" data-wow-delay=".4s">Dernières nouvelles</h2>
						<p class="wow fadeInUp" data-wow-delay=".4s">Explorez des articles sur nos actualités du monde .</p>
					</div>
				</div>
			</div>
			<div class="row">

				@foreach ($blogs as $row)
					{{-- expr --}}
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="single-blog mb-30 wow fadeInUp" data-wow-delay=".2s">
						<div class="blog-img">
							<a href="javascript:void(0);"><img src="{{ asset('article/'.$row->photo) }}" alt="" height="300"></a>
						</div>
						<div class="blog-content">
							<h4><a href="/blog/{{$row->slug}}"> {{$row->titre}} </a></h4>
							<p></p>
							<a class="read-more" href="/blog/{{$row->slug}}">Lire la suite <i class="lni lni-arrow-right"></i></a>
						</div>
					</div>
				</div>
				@endforeach


			
			</div>
		</div>
	</section>
	<!-- ========================= blog-section end ========================= -->

	<!--========================= partainer========================= -->
	<section class="we-do-section pt-50">
		<div class="shape shape-1">
			<img src="{{ asset('dev/assets/img/shapes/shape-2.svg') }}" alt="">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-8 mx-auto">
					<div class="section-title text-center mb-55">
						<span class="wow fadeInDown" data-wow-delay=".2s">Nos partenaires</span>
						<h2 class="mb-15 wow fadeInUp" data-wow-delay=".4s">Ils nous accompagnent et nous font confiance!</h2>
						
					</div>
				</div>
			</div>
			<div class="row">
				

				@foreach ($partenaires as $row)
					{{-- expr --}}
					<div class="col-lg-3">
						<div class="we-do-item mb-10">
							<div class="we-do-icon mb-20" style="cursor: pointer;">
								<a style="cursor: pointer;" href="<?php
								if($row->url !='')
								{
									echo($row->url);
								}
								else{
									echo("#");
								}
								?>" target="_blank">
									<img src="{{ asset('partenaire/'.$row->photo) }}" alt="">
								</a>
							</div>
							
						</div>
				    </div>
				@endforeach
				
				
			</div>
		</div>
	</section>
	<!--========================= fin  partainer========================= -->



 

@endsection