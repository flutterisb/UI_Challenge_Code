import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class CustomRowItems extends StatelessWidget {
  final IconData icon;
  final String title;
  CustomRowItems(this.icon, this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 20,
          color: Color(0xFFe6753d),
        ),
        Text(" " + title,
            style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold,
                fontSize: 16)),
      ],
    );
  }
}
