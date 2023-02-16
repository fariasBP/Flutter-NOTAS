
scaffoldBackgroundColor: Colors.white,
primaryColor: Color(0xFF0C0C0C),
appBarTheme: AppBarTheme(
  color: Colors.white,
  iconTheme: IconThemeData(color: Color(0xFF0C0C0C)),
  elevation: 0,
  titleTextStyle: TextStyle(
    color: Color(0xFF0C0C0C),
    fontSize: 20,
  ),
  centerTitle: true,
),
listTileTheme: ListTileThemeData(
  iconColor: Color(0xFF0C0C0C),
  textColor: Color(0xFF0C0C0C),
),
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: Color.fromARGB(255, 92, 38, 38),
  unselectedItemColor: Color.fromARGB(255, 49, 49, 49),
  showUnselectedLabels: false,
  landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  // enableFeedback: true,
),
// textfield
inputDecorationTheme: InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: BorderSide.none,
  ),
  fillColor: Color.fromARGB(255, 214, 214, 223),
  filled: true,
  constraints: BoxConstraints(maxHeight: 50.0),
  contentPadding:
      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
),
// buton
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    primary: Color(0xFF0C0C0C),
    // minimumSize: Size.fromHeight(50),
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  ),
),
textButtonTheme: TextButtonThemeData(
  style: TextButton.styleFrom(
    primary: Color(0xFF0C0C0C),
  ),
),