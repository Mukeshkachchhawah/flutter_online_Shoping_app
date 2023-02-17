import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

import '../screens/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String uid;

  @override
  void initState() {
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 8, 14),
        centerTitle: true,
        title: Text("Home"),
      ),
      drawer: Drawer_Ui(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addItems(),
            items_nike(),
            items_1(),
            items_2(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Shoes Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            items_grid1(),
            items_grid2(),
            items_grid3()
          ],
        ),
      ),
    );
  }

  Widget items_grid3() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Snadals",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Chapals",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Kind \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget items_grid2() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Loafers \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Flip-flop \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Boots \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget items_grid1() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Sports \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Casual \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Sneakers \nShoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget items_2() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://sneakernews.com/wp-content/uploads/2017/02/nike-vapormax-price-3.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nike"),
                      ),
                      Text(
                        "Rs. 999",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img1.exportersindia.com/product_images/bc-full/2019/7/6435190/adidas-shoes-1562410868-4986263.jpeg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Adidas"),
                      ),
                      Text(
                        "Rs. 1999",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://www.highsnobiety.com/static-assets/thumbor/YDXBIM0FcgQ4r-Dcporz2dYBHeQ=/1600x1141/www.highsnobiety.com/static-assets/wp-content/uploads/2022/09/23162637/air-jordan-1-black-white-panda-date-price.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Jordon"),
                      ),
                      Text(
                        "Rs. 1499",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://images.fancode.com/media/catalog/product/cache/c864083bf74ae97037fa23bc5340ae95/3/7/37543105_6_qip0xv3heshhfbtv.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Puma"),
                      ),
                      Text(
                        "Rs. 1299",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://4.imimg.com/data4/IJ/CM/GLADMIN-182676/reebok-shoes-500x500.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Reebock"),
                      ),
                      Text(
                        "Rs. 1199",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.youtube.com/vi/uNMQ-3KFXaY/hqdefault.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sparx"),
                      ),
                      Text(
                        "Rs. 1100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/18043676/2022/8/4/92ddcc8a-6003-496d-bb25-fee755c549df1659630772131CampusMenWhiteMeshRunningShoes1.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Campus"),
                      ),
                      Text(
                        "Rs. 1500",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget items_1() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/free-vector/color-sport-sneaker_98292-3191.jpg?w=740&t=st=1676538402~exp=1676539002~hmac=fd837c53831148f18e5b7f3ae51c453a0050453c9668fa0d3d1b9417e3596cc0",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nike"),
                      ),
                      Text(
                        "Rs.700",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/premium-photo/sneakers-isolated-white_93675-14955.jpg?w=740",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Adidas"),
                      ),
                      Text(
                        "Rs. 900",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/free-photo/brown-man-s-leather-derby-shoes_53876-97144.jpg?w=740&t=st=1676538596~exp=1676539196~hmac=a97eee2545f309f5acfcc5728d746cf1c1bfea2204701d30f3da706059dc6f21",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Jordon"),
                      ),
                      Text(
                        "Rs. 2200",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/free-photo/brown-leather-slip-men-s-shoes-fashion_53876-104481.jpg?w=740&t=st=1676538675~exp=1676539275~hmac=e82d4400ace0bba2a274442bbffbea8557b6cbef6de080ff8be04171da2c7c12",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Puma"),
                      ),
                      Text(
                        "Rs. 3000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/free-photo/one-black-sneaker-shoe-isolated-white_93675-131266.jpg?w=740&t=st=1676538801~exp=1676539401~hmac=9f11c6c11b3856263d078fc3511fdc6197f3f2bc6419d62cd4f205d5257d865e",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Reebock"),
                      ),
                      Text(
                        "Rs. 900",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://m.media-amazon.com/images/I/61BTn+U4i0L._UL1110_.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sparx"),
                      ),
                      Text(
                        "Rs. 800",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://cdn.shopify.com/s/files/1/0339/4361/7673/products/Nike.puma43_616x.progressive.jpg?v=1674116347",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Campus"),
                      ),
                      Text(
                        "Rs. 1100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget items_nike() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: AssetImage(
                        "assets/nike/foot.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nike"),
                      ),
                      Text(
                        "Rs. 800",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://img.freepik.com/free-photo/pair-trainers_144627-3799.jpg?w=740&t=st=1676538319~exp=1676538919~hmac=51ab5595d02ff92b254d7e2453c65caa887b060e6f0d8507611083bcbe3c0c0f",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    // color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Adidas"),
                      ),
                      Text(
                        "Rs. 2000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: AssetImage(
                        "assets/nike/images foor.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Jordon"),
                      ),
                      Text(
                        "Rs. 2200",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: AssetImage(
                        "assets/nike/nike 2023 pn pitch boots.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Puma"),
                      ),
                      Text(
                        "Rs. 3000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://m.media-amazon.com/images/I/31b-UykCmNL.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //  color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Reebock"),
                      ),
                      Text(
                        "Rs. 900",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://m.media-amazon.com/images/I/814OCn0lIzL._UL1500_.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),

                    /// color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sparx"),
                      ),
                      Text(
                        "Rs. 1100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.0,
                      image: NetworkImage(
                        "https://m.media-amazon.com/images/I/61MGVjbYydL._UY625_.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    // color: Color.fromARGB(131, 177, 1, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Campus"),
                      ),
                      Text(
                        "Rs. 1100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

// add items in e-commers
  Widget addItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Nike",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Adidas",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Jordon",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Puma",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Reebok",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Sparx",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 0, 0, 1)),
                  child: Center(
                      child: Text(
                    "Campus",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
