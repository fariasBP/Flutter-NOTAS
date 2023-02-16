

// Sin Borde
	TextField(
	  decoration: InputDecoration(
	    border: InputBorder.none,
	  ),
	),

// Borde Inferior - UnderlineInputBorder
	TextField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
    ),
  ),

// Borde - OutlineInputBorder
	TextField(
	  decoration: InputDecoration(
	    border: OutlineInputBorder(),
	  ),
	),

// Borde redondeado
	TextField(
	  decoration: InputDecoration(
	    border: OutlineInputBorder(
	      borderRadius: BorderRadius.circular(30),
	    ),
	  ),
	),