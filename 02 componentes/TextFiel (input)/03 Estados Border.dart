

// border focused
TextField(
  decoration: InputDecoration(
    icon: Icon(
      Icons.alternate_email,
      color: Color(0xff3A3A81),
    ),
    labelText: 'Correo electrónico',
    hintText: 'example@mail.com',
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff3A3A81),
      ),
    ),
  ),
),

// label focused style
FocusNode myFocusNode = new FocusNode();

...

  return TextFormField(
    focusNode: myFocusNode,
    decoration: InputDecoration(
      labelText: 'test',
      labelStyle: TextStyle(
        color: myFocusNode.hasFocus ? Colors.blue : Colors.black
      )
    ),
  );