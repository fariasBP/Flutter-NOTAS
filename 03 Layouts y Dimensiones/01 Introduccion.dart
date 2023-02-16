class BoxWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double marginV;
  final double marginH;

  BoxWidget({
    Key? key,
    required this.width,
    required this.height,
    this.color = Colors.blue,
    this.marginV = 0,
    this.marginH = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      margin: EdgeInsets.symmetric(vertical: marginV, horizontal: marginH),
      decoration: BoxDecoration(
        color: this.color,
      ),
    );
  }
}