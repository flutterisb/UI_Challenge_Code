import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class SplashScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  @override
  Widget build(BuildContext context) {
    // We will get height and width of the device to adjust the layouts
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // As the Name Suggest. Renders the background Image
            backgroundImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // HeaderText: Get the Fastest Delivery
                headerText(),
                // Subtext : Order Food and Get ....
                subText(),

                get_Started_Button(context),

                delivery_Person_Bike_Image(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage() {
    return Image.asset(
      "assets/background.png",
      fit: BoxFit.fill,
    );
  }

  Widget headerText() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 18.0, top: 60),
      child: Text(
        "Get \nthe Fastest \nDelivery ",
        style: TextStyle(
            fontSize: 45, fontWeight: FontWeight.w700, fontFamily: "MavenPro"),
      ),
    );
  }

  Widget subText() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        "Order Food and get \nDelivery in Fastest time in Town",
        style: TextStyle(
            fontSize: 20, fontFamily: "Nunito", fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget get_Started_Button(BuildContext context) {
    // For Buttons You can Use Material Buttons, Raised Buttons, Flat Buttons, Cuppertino Buttons
    // Which are pre build Buttons in flutter. Or can make your Own.

    // In this Example I have made a custom button using inkWell and card. To show you how can you
    // achive designs according to your needs
    // while having complete grip on its properties.

    // You can also use the pre build buttons and can costomize them , as flutter is open source so you
    // can use their code.
    // For that just hover over any widget while pressing ctrl on windows and click . And
    // IDE will lead you to source code
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          color: Colors.deepOrangeAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
            child: Text("Get Started",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito",
                    fontSize: 18,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }

  Widget delivery_Person_Bike_Image() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset("assets/delievery.png"),
      ),
    );
  }
}
