import 'package:flutter/material.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: "images/sinister 6.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Sinister-Six",
  ),
  ImageDetails(
    imagePath: "images/awantika.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Devil from another world.",
  ),
  ImageDetails(
    imagePath: "images/cannon new.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Fireeeeeeeee!!!",
  ),
  ImageDetails(
    imagePath: "images/Ishan Wick updated.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Ishan Wick",
  ),
  ImageDetails(
    imagePath: "images/Nora.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Look at the prince, Nora",
  ),
  ImageDetails(
    imagePath: "images/Monster in a bottle.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Pirateee !!",
  ),
  ImageDetails(
    imagePath: "images/Prabesh_Hilux.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Lets ride with the HILUX",
  ),
  ImageDetails(
    imagePath: "images/priya.jpg",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Disperse in the rythm",
  ),
  ImageDetails(
    imagePath: "images/Sanket_Superman.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Something Just Like This",
  ),
  ImageDetails(
    imagePath: "images/simran_wonder woman_painting.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Wonder Simran",
  ),
  ImageDetails(
    imagePath: "images/Soldier_story.jpg",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Soldier Never off Duty",
  ),
  ImageDetails(
    imagePath: "images/subham with this monkey.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Selfie with Monkie",
  ),
  ImageDetails(
    imagePath: "images/subhav.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Sssssshhh The Constrictor",
  ),
  ImageDetails(
    imagePath: "images/Vilgax.jpg",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "Vilgax Realistified",
  ),
  ImageDetails(
    imagePath: "images/watching the end of the world.png",
    photoshopper: "Ishan Karki",
    details:
        "This is the combined supervillain of the biggest top six villains of the spiderman franchise, collectively known as sinister six.",
    title: "You and Me watching the END OF THE WORLD",
  ),
];

class GalleryApp extends StatelessWidget {
  const GalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[700],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Gallery",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 15.0,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String photoshopper;
  final String details;
  final String title;
  ImageDetails({
    required this.imagePath,
    required this.photoshopper,
    required this.details,
    required this.title,
  });
}
