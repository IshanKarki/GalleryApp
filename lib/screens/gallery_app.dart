import 'package:flutter/material.dart';
import 'package:gallery_app/screens/detailspage.dart';

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
        "Yeah I'm a Lucifer and I burn the world, sometimes dark magic works.",
    title: "Devil from another world.",
  ),
  ImageDetails(
    imagePath: "images/cannon new.png",
    photoshopper: "Ishan Karki",
    details:
        "Boomm Babey!!!! The target to the glowing Eiffel Tower and I'm gonna explode the romance this place has built.",
    title: "Fireeeeeeeee!!!",
  ),
  ImageDetails(
    imagePath: "images/Ishan Wick updated.png",
    photoshopper: "Ishan Karki",
    details:
        "See ya in my upcoming movie where I kill Thanos with a fu***** pencil.",
    title: "Ishan Wick",
  ),
  ImageDetails(
    imagePath: "images/Nora.png",
    photoshopper: "Ishan Karki",
    details:
        "Ooahh! my little prince, will you take your human form if I kiss you?",
    title: "Look at the prince, Nora",
  ),
  ImageDetails(
    imagePath: "images/Monster in a bottle.png",
    photoshopper: "Ishan Karki",
    details: "The pirates left me because they don't know what I am.",
    title: "Pirateee !!",
  ),
  ImageDetails(
    imagePath: "images/Prabesh_Hilux.png",
    photoshopper: "Ishan Karki",
    details: "My Dream car Hilux and yes adventure awaits.",
    title: "Lets ride with the HILUX",
  ),
  ImageDetails(
    imagePath: "images/priya.jpg",
    photoshopper: "Ishan Karki",
    details:
        "I'm completely dispersed in the feelings and aura of my own world.",
    title: "Disperse in the rythm",
  ),
  ImageDetails(
    imagePath: "images/Sanket_Superman.png",
    photoshopper: "Ishan Karki",
    details:
        "I've been reading books of old, the legend and the myth, achilles and his gold, hercules and his gift, spiderman's control and batman with his fist and CLEARLY I DON'T SEE MYSELF UPON THAT LIST.",
    title: "Something Just Like This",
  ),
  ImageDetails(
    imagePath: "images/simran_wonder woman_painting.png",
    photoshopper: "Ishan Karki",
    details:
        "Ever felt my sonic boom? Well, you'll find out what I'm really made of.",
    title: "Wonder Simran",
  ),
  ImageDetails(
    imagePath: "images/Soldier_story.jpg",
    photoshopper: "Ishan Karki",
    details: "Just if I live to this another day I can see my family again.",
    title: "Soldier Never off Duty",
  ),
  ImageDetails(
    imagePath: "images/subham with this monkey.png",
    photoshopper: "Ishan Karki",
    details: "Lets pout",
    title: "Selfie with Monkie",
  ),
  ImageDetails(
    imagePath: "images/subhav.png",
    photoshopper: "Ishan Karki",
    details: "Let me constrict you in my boa.",
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
        "Feels like everything is burning, everything is going down and you're just not appreciated still.",
    title: "Watching the END OF THE WORLD",
  ),
];

class MyGalleryApp extends StatefulWidget {
  const MyGalleryApp({Key? key}) : super(key: key);

  @override
  _MyGalleryAppState createState() => _MyGalleryAppState();
}

class _MyGalleryAppState extends State<MyGalleryApp> {
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
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photoshopper: _images[index].photoshopper,
                              details: _images[index].details,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
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
