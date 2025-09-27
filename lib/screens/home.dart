/*import 'package:flutter/material.dart';
import 'Image.dart';
class CostumerHome extends StatefulWidget {
  const CostumerHome({super.key});

  @override
  State<CostumerHome> createState() => _CostumerHomeState();
}

class _CostumerHomeState extends State<CostumerHome> {
  int i=0;
  List <FoodImage> img=[
    FoodImage(
        description: 'plat de semaine ! chorba traditional ', chef:'sara benchenni',
        src:'assets/charba.jpg'
    ),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ', chef:'mouchira badni',
        src:'assets/cha5chou5a.jpg'
    ),
    FoodImage(
        description: 'plat de semaine ! chorba traditional ', chef:'sara benchenni',
        src:'assets/charba.jpg'
    ),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ', chef:'mouchira badni',
        src:'assets/cha5chou5a.jpg'
    ),
  ];
  void _nextImage() {
    setState(() {
      i++;
      if (i >= img.length) {
        i = 0; // revenir au début
      }
    });
  }
  Widget foodCard (foodImg){
    return Card(
      child: Container(
        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        padding: EdgeInsets.only(top: 4,left: 5,right: 5),
        child: Row(
          children: [
            Image.asset(
                foodImg.src,
              width: 80,
              height: 50,

            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(foodImg.chef,style: const TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 18,
                    maxLines: 2, // max 2 lignes
                    overflow: TextOverflow.ellipsis,),),
                  SizedBox(height: 6,),
                  Text(foodImg.description,style: TextStyle(fontSize: 16, color: Colors.grey[600]),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

            body: Column(

              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.0 , right: 20.0,top: 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Text('dzEAt',style: TextStyle(
                       letterSpacing: 1.5, color: Colors.deepOrange,
                       fontWeight: FontWeight.bold,
                       fontSize: 20.0,
                     ),),

                      Row(
                        children: [
                          Icon(Icons.search,color: Colors.deepOrange,size: 21,),
                          SizedBox(width: 10,),
                          Text('manel',style: TextStyle(
                            letterSpacing: 1.5, color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),
                        ],
                      ),
                    ],
                  ) ,
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0 , right: 20.0),
                    padding : EdgeInsets.only(left: 20.0 , right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Recommended " , style: TextStyle(color: Colors.deepOrange,
                            fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Image.asset(img[i].src,
                          width: 240,
                          height: 250,
                          fit: BoxFit.cover,),
                        SizedBox(height: 15,),
                        Text(img[i].description ,style: TextStyle(fontSize: 20),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(img[i].chef,style: TextStyle(letterSpacing: 2.0),),
                            IconButton(
                              icon: Icon(Icons.forward, color: Colors.deepOrange, size: 30),
                              onPressed: _nextImage,
                            ),
                          ],
                        ),



                      ],

                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16),
                    itemCount: img.length,
                    itemBuilder: (context, index) => foodCard(img[index]),
                  ),
                ),
              ],
            ),




    );
  }
}
*/


import 'package:flutter/material.dart';
import 'Image.dart';

class CostumerHome extends StatefulWidget {
  const CostumerHome({super.key});

  @override
  State<CostumerHome> createState() => _CostumerHomeState();
}

class _CostumerHomeState extends State<CostumerHome> {
  int i = 0;

  List<FoodImage> img = [
    FoodImage(
        description: 'plat de semaine ! chorba traditional ',
        chef: 'sara benchenni',
        src: 'assets/charba.jpg'),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ',
        chef: 'mouchira badni',
        src: 'assets/cha5chou5a.jpg'),
    FoodImage(
        description: 'plat de semaine ! chorba traditional ',
        chef: 'sara benchenni',
        src: 'assets/charba.jpg'),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ',
        chef: 'mouchira badni',
        src: 'assets/cha5chou5a.jpg'),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ',
        chef: 'mouchira badni',
        src: 'assets/cha5chou5a.jpg'),
    FoodImage(
        description: 'plat de semaine ! chorba traditional ',
        chef: 'sara benchenni',
        src: 'assets/charba.jpg'),
    FoodImage(
        description: 'plat de jour ! chakhchoukha traditional ',
        chef: 'mouchira badni',
        src: 'assets/cha5chou5a.jpg'),
  ];

  void _nextImage() {
    setState(() {
      i++;
      if (i >= img.length) {
        i = 0; // revenir au début
      }
    });
  }

  // ---- Widget carte repas ----
  Widget foodCard(FoodImage foodImg) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                foodImg.src,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded( // <-- prend la largeur restante
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodImg.description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 2, // max 2 lignes
                    overflow: TextOverflow.ellipsis, // coupe avec "..."
                  ),
                  const SizedBox(height: 6),
                  Text(
                    foodImg.chef,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---- HEADER ----
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'dzEAt',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.search, color: Colors.deepOrange, size: 21),
                        SizedBox(width: 10),
                        Text(
                          'manel',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ---- RECOMMENDED ----
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recommended",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Image.asset(
                      img[i].src,
                      width: double.infinity,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 12),
                    Text(img[i].description,
                        style: const TextStyle(fontSize: 18)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(img[i].chef,
                            style: const TextStyle(letterSpacing: 1.5)),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward,
                              color: Colors.deepOrange, size: 30),
                          onPressed: _nextImage,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // ---- LISTE DES REPAS ----
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return foodCard(img[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }





}

