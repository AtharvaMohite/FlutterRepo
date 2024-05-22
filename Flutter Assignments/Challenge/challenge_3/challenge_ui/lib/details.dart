import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

// 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
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 59, left: 16),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1 (1).png",
              height: 244,
              width: 195,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(62, 102, 24, 1)),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(197, 214, 181, 1)),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(197, 214, 181, 1)),
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31, bottom: 6),
            child: Text(
              "Snake Plants",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 31, bottom: 37),
            width: 298,
            child: Text(
                "Plansts make your life with minimal and\nhappy love the plants more and enjoy life."),
          ),
          Container(
            // height: 200,
            padding: EdgeInsets.symmetric(horizontal: 11, vertical: 30),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(118, 152, 75, 1)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // height: 75,
                      width: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Group 5470.png",
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Height",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "30cm-40cm",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 75,
                      //width: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/thermometer.png",
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Temperature",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "20’C-25’C",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 75,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Vector (1).png",
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Pot",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "Ciramic Pot",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 0.8)),
                        ),
                        Text(
                          "₹ 350",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.16, vertical: 12.1),
                      height: 48.39,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(103, 133, 74, 1),
                          borderRadius: BorderRadius.circular(8.06)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/shopping-bag.png",
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add to cart",
                            style: GoogleFonts.rubik(
                                fontSize: 14.52,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
