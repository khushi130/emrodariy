import 'package:embroidery_app/desing.dart';
import 'package:flutter/material.dart';

class Multi extends StatefulWidget {
  const Multi({super.key});

  @override
  State<Multi> createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  int? sno;
  final List<bool> _isselected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[
                  Color.fromARGB(255, 101, 141, 137),
                  Colors.white,
                  Color.fromARGB(255, 101, 141, 137),
                ]),
          )),
          title: const Text(
            "Multi Designs",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromARGB(255, 93, 144, 139),
            );
          },
          itemCount: multi.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  sno = index;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Desingpic(),
                      ));
                });
              },
              dense: false,
              enabled: true,
              tileColor: sno == index
                  ? const Color.fromARGB(255, 93, 144, 139)
                  : const Color.fromARGB(255, 3, 44, 35),
              //selectedTileColor: Color.fromARGB(255, 101, 141, 137),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: multiimg[index], fit: BoxFit.cover),
                ),
              ),
              title: Text(
                multi[index],
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ));
  }

  List<String> multi = [
    "Multi Sarees",
    "Multi Lehengha Designs",
    "Multi Single Head Dresses",
    "Multi Top-Duptta",
    "Multi Allover designs",
    "Multi Nack",
    "Multi Kurties",
    "Multi Lace",
    "Multi Blouse",
    "Multi Anarkali",
    "Multi Figure Concept",
    "Multi Butta",
    "Multi Lakhnavi Test",
    "Multi Panel-Patta",
    "God Design",
  ];
  List<NetworkImage> multiimg = [
    const NetworkImage("https://www.jomso.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/t/pt-196.jpg"),
    const NetworkImage("https://assets.panashindia.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/4/2402lg07-10148.jpg"),
    const NetworkImage("https://i.pinimg.com/564x/78/e6/3e/78e63e9cc3dd734031eb541531f80178.jpg"),
    const NetworkImage("https://img3.junaroad.com/uiproducts/17429424/zoom_0-1607349177.jpg"),
    const NetworkImage("https://cdn.shopify.com/s/files/1/0446/4056/7455/products/multi-patch-allover-red-embroidery-designer-cotton-fabric-455_1024x1024@2x.jpg?v=1601913825"),
    const NetworkImage("https://i.pinimg.com/564x/0e/03/43/0e034353b3f300775f0d428690893cf3.jpg"),
    const NetworkImage("https://5.imimg.com/data5/SELLER/Default/2020/8/GX/UR/ED/6756055/0o1a1613-1000x1000.jpg"),
    const NetworkImage("https://embdesigntube.com/image/cache/catalog/lace/machine%20embroidery%20cutwork%20border%20designs%2026457-450x450h.JPG"),
    const NetworkImage("https://i.pinimg.com/originals/89/7a/f9/897af9b1978e28fa7635ff927046138c.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/0103201932420_17045-kk-compress.jpeg"),
    const NetworkImage("https://i.pinimg.com/564x/70/b0/9f/70b09f8ec788d9de73117a563696ebed.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/0203202232349_t-13.jpg"),
    const NetworkImage("https://www.shahifits.in/wp-content/uploads/2020/08/New-Designer-Gray-Color-Lucknowi-Modern-Suit-e1598860354391.jpeg"),
    const NetworkImage("https://embdesigntube.com/image/cache/catalog/border/14604C-450x450h.jpg"),
    const NetworkImage("https://img2.embroiderydesigns.com/stockdesign/xlarge/favpro_designs/fp24170.jpg"),
  ];
}
