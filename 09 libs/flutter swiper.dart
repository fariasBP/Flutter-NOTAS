// INSTALACION
	- flutter pub add flutter_swiper
	- flutter_swiper: ^1.1.6

// SWIPERS EJEMPLOS
	// swiper stack
	Container(
		height: 300.0,
		child: Swiper(
		  layout: SwiperLayout.STACK,
		  itemCount: 3,
		  itemWidth: 200.0,
		  // itemHeight: 300.0,
		  itemBuilder: (context, int index) => Image.network(
		    "https://programacion.net/files/article/20161128011132_Android.png",
		    fit: BoxFit.cover,
		    scale: 0.9,
		  ),
		),
	),