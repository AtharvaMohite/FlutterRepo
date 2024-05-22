import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Netflix"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "  MOVIES",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 230,
                    height: 310,
                    child: Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 230,
                    height: 310,
                    child: Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 230,
                    height: 310,
                    child: Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "  WEB SERIES",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 200,
                      height: 250,
                      child: Image.network(
                        width: double.infinity,
                        "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Colors.white,
                      width: 200,
                      height: 250,
                      child: Image.network(
                        "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      child: Image.network(
                        width: double.infinity,
                        "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 200,
                      height: 250,
                      child: Image.network(
                        width: double.infinity,
                        "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Colors.white,
                      width: 200,
                      height: 250,
                      child: Image.network(
                        "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      child: Image.network(
                        width: double.infinity,
                        "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "   MOST POPULAR",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      // color: Colors.white,
                      width: 200,
                      height: 250,
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Colors.white,
                      width: 200,
                      height: 250,
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
