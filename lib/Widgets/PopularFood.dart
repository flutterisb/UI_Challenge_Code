import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class PopularFood extends StatelessWidget {
  final String asset;
  final String venue;
  final String price;
  final String title;
  PopularFood(
      {@required this.asset, @required this.title, this.price, this.venue});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(asset, title, venue, price)));
      },
      child: Container(
        height: 220,
        width: 190,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 2.0,
                  child: Container(
                    height: 170,
                    width: 190,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 75.0, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(" " + title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFe6753d),
                              ),
                              SizedBox(width: 3),
                              Text(venue, style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            " \$$price",
                            style: TextStyle(
                                color: Color(0xFFe6753d),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  asset,
                  height: 120,
                  width: 120,
                ))
          ],
        ),
      ),
    );
  }
}
