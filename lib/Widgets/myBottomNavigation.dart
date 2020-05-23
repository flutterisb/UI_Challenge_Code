import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class MyBottomNavigationBar extends StatelessWidget {
  // Flutter has a BottomNavigationBar widget. And you can use it and  customise it to a large extent.
  // But as always its not necessary that built in widgets always meet your needs.
  // As in this design. We see some round corners arround the bottom navigation bar
  // and a ( . ) dot at the bottom of selected item.
  // So the main point is. You can always make your own custom widgets and use them.
  // Its always a good Practice :)

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      elevation: 18,
      child: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/home.png"),
                SizedBox(height: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    height: 5,
                    width: 5,
                    color: Colors.red,
                  ),
                )
              ],
            )),
            Expanded(
              child: IconButton(
                icon: Image.asset("assets/baggrey.png"),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Image.asset("assets/location.png"),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Image.asset("assets/profile.png"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
