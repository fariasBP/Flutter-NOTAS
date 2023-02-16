

RadioListTile(
	title: Text("Masculino"),
	value: 1,
	groupValue: _gender, // valor actual
	onChanged: (int? value) {
		print(value);
		_gender = value as int; // cambiando valor, value = 1
		setState(() {});
	},
),
RadioListTile(
	title: Text("Femenino"),
	value: 2,
	groupValue: _gender, // valor actual
	onChanged: (int? value) {
		print(value);
		_gender = value as int; // cambiando valor, value = 2
		setState(() {});
	},
),

// metodo directo
RadioListTile(
	title: Text("Femenino"),
	value: 2,
	groupValue: _genero, // valor actual
	onChanged: _setGender,
),

void _setGender(int? val) {
	_gender = val ?? 0;
	setState(() {});
}