import 'package:flutterislamabaduichallenge/Utils/imports.dart';

class Home extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;

  Widget background() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Color(0xFFcff3f3),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Color(0xFFf6f6f6),
          ),
        ),
      ],
    );
  }

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
            // background() widget, as the name suggest defines the background of Home Activity / Page
            background(),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 45),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  // Defines the Avatar and the text ( " How Hungry Are You Today ?" )
                  myAvatarRow(),
                  SizedBox(height: 20),
                  // Defines the Search Bar
                  mySearchRow(),
                  SizedBox(height: 25),
                  // Defines the Category Cards , Salad, Shake , Pizzas
                  myCategoryCards(),
                  // Defines the Text ( Popular Foods ) And ( View All )
                  myHeadingRow(),
                  // Defines the Popular Foods Widgets
                  myPopularFoods(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget myAvatarRow() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/avatar.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text("How Hungry are you today ?",
              style: TextStyle(
                  fontSize: 19,
                  fontFamily: "MavenPro",
                  fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }

  Widget myPopularFoods() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          // PopularFood is a Custom Widget defined is the Widget's Folder
          PopularFood(
            asset: "assets/PLate6.png",
            title: "Sea Platter",
            venue: "Maratine Star Restaurant",
            price: "20",
          ),
          SizedBox(width: 8),
          PopularFood(
            asset: "assets/PLate2.png",
            title: "Chicken Wadges",
            venue: "Rio Cafe",
            price: "25",
          ),
          SizedBox(width: 8),

          PopularFood(
            asset: "assets/PLate3.png",
            title: "Island Beauty",
            venue: "Peach Restaurant",
            price: "30",
          ),
          SizedBox(width: 8),

          PopularFood(
            asset: "assets/PLate4.png",
            title: "Pepparoni soup",
            venue: "Medel C",
            price: "40",
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget myCategoryCards() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          // Category Card is a Custom Widget defined in the Widget's Folder
          CategoryCard(asset: "assets/pizza.png", title: "Pizzas"),
          SizedBox(
            width: 10,
          ),
          CategoryCard(asset: "assets/salad.png", title: "Salad"),
          SizedBox(
            width: 10,
          ),
          CategoryCard(asset: "assets/shake.png", title: "Shake"),
        ],
      ),
    );
  }

  Widget mySearchRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 45,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text("Search food items",
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: Colors.white,
            child: IconButton(
              icon: Icon(
                Icons.settings_input_component,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget myHeadingRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Popular Foods",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                  fontSize: 30)),
          Text(
            "View All",
            style: TextStyle(
                fontFamily: "Nunito", fontSize: 20, color: Colors.cyan[300]),
          )
        ],
      ),
    );
  }
}
