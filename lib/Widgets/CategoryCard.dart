import 'package:flutterislamabaduichallenge/Utils/imports.dart';


class CategoryCard extends StatelessWidget {
  final String asset;
  final String title;
  CategoryCard({@required this.asset, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 120,
          width: 136,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                asset,
                height: 65,
              ),
              SizedBox(height: 10),
              Text(title,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 18,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}