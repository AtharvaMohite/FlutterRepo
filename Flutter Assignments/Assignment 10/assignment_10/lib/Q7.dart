import 'package:flutter/material.dart';

class Question7 extends StatelessWidget {
  const Question7({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question 7"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Image.network(
                "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                fit: BoxFit.fill,
                height: 300,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                fit: BoxFit.fill,
                height: 300,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                fit: BoxFit.fill,
                height: 300,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                fit: BoxFit.fill,
                height: 300,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                height: 300,
                fit: BoxFit.fill,
                width: 150,
              ),
            ],
          )
        ],
      ),
    );
  }
}
