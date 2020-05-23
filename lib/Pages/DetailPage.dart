import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class DetailPage extends StatelessWidget {
  //Item Details from Home Page
  String asset, title, venue, price;
  DetailPage(this.asset, this.title, this.venue, this.price);
  double height = 0.0;
  double width = 0.0;
  @override
  Widget build(BuildContext context) {

    // We will get height and width of the device to adjust the layouts
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // Our main Body widget will be SingleChildScroll View so if our detail for the item exceeds
      // the Screen height it will make the creen scrollable vertically. And we wont get any screen height issues 
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          //Again we have used Stack so we can arrange Widget on Top of Each Other..
          child: Stack(
            children: <Widget>[
              // myDetailBody is our Main Body Widget which contains all the main stuff like two main containers at back which makes 
              // the background and Item Title, Price , Venue, And Details
              myDetailBody(),
              // Top Back Button to navigate to Home Screen
              myBackButton(context),
              // Fork, Knife and Item Image in the top Center
              myHeaderImages(),
              // Heart Button in the centerRight corner
              myHeartButton(),
              // Swipe Card at the Bottom
              myBottomCartBar(width),
            ],
          ),
        ),
      ),
    );
  }

  Widget myDetailBody(){

    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Light Pink Half Background
                  // As you can see we have used Flex Factor in expanded Widgets to create the background.
                  // Apparently there is only difference of 1 as one has 2 and the other has 3 as a value. So Question here is why we haven't
                  // 1 and 2. So the answer is that Flex factors works like ratios. Ratios to the size of parent widget
                  // Here Parent widget is whole screen. As you can see we needed that pink part slightly bigger then the 3rd part of the screen
                  // so we have used these values as we needed to ratio our screen.
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xFFfef5fa),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18.0, right: 18.0, top: 28.0, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$$price",
                                  style: TextStyle(
                                      color: Color(0xFFe6753d),
                                      fontSize: 27,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xFFe6753d),
                                ),
                                Text(" $venue",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 17,
                                        fontFamily: "Nunito",
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey[400],
                            indent: 12,
                            endIndent: 12,
                          ),
                          SizedBox(height: 10),
                          // These are Row Items, Ratings , Time to deliver, and Distance for the item's venue
                          myCustomRowItems(),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.grey[400],
                            indent: 12,
                            endIndent: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text("Overview",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Nunito")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18.0, right: 18.0, top: 10),
                            child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                style: TextStyle(
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Nunito",
                                    color: Colors.grey[500],
                                    fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
  }
  Widget myHeartButton() {
    // Using a Positioned widget with respect to the whole screen is never a good Idea. As Screen Sizes 
    // may varry. and so the UI will be distorted. But they are very handy when using inside other fized widgets 
    return Positioned(
      top: 245,
      left: 340,
      child: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          "assets/heart.png",
          height: 28,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  Widget myBackButton(BuildContext context) {
    return Positioned(
      top: 35,
      left: 20,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Card(
          elevation: 5,
          
          // Cards have by default round Corners. But to modify them we can use the shape property.
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget myBottomCartBar(double width){

    // Align widgets are the best when to arrange main widgets in the stack. 
    // While designing, there are thousands possibilities to do one thing. There is no boundry to 
    // designer's creativity. But the main thing is that how responsive and efficient your design is
    return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, -1))
                      ],
                      color: Colors.white),
                  width: width,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 6),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD977E),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Image.asset(
                                    "assets/bag.png",
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Text("Swipe to add on Cart",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      letterSpacing: 1,
                                      fontFamily: "Nunito",
                                      fontSize: 15)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
  }

  Widget myHeaderImages(){

    return Positioned(
                top: 55,
                left: 50,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/fork.png",
                      height: 200,
                    ),
                    Hero(
                      tag: asset.split("/"),
                      child: Container(
                        height: 230,
                        child: Image.asset(asset),
                      ),
                    ),
                    Image.asset("assets/knife.png", height: 200),
                  ],
                ),
              );
  }


  Widget myCustomRowItems(){


    return  Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              children: <Widget>[

                                // CustomRowItems is a Custom Widget which is placed in Widgets Folder. 
                                CustomRowItems(Icons.star, "4.5"),
                                Expanded(
                                    child:
                                        CustomRowItems(Icons.timer, "18 min")),
                                CustomRowItems(Icons.map, "2.3 km"),
                              ],
                            ),
                          );
  }
}
