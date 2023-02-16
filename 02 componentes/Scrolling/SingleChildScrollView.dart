

SingleChildScrollView(
	child: ConstrainedBox(
		constraints: BoxConstraints(
			minHeight: viewportConstraints.maxHeight,
			),
		child: Column(
			mainAxisSize: MainAxisSize.min,
			mainAxisAlignment: MainAxisAlignment.spaceAround,
			children: <Widget>[
			Container(
				// A fixed-height child.
				color: const Color(0xffeeee00), // Yellow
				height: 120.0,
				alignment: Alignment.center,
				child: const Text('Fixed Height Content'),
				),
			Container(
				// Another fixed-height child.
				color: const Color(0xff008000), // Green
				height: 120.0,
				alignment: Alignment.center,
				child: const Text('Fixed Height Content'),
				),
			],
			),
		),
	)