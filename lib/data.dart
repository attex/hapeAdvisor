import 'package:hape_advisor/main.dart';

List<DataPoint> dataTable = [
  DataPoint(
      2,
      EventType.place,
      "Blautopf",
      "Germany",
      "The Blautopf (German for Blue pot) is a spring that serves as the source of the river Blau in the karst landscape on the Swabian Jura's southern edge",
      "Blaubeuren",
      "Must see. It's a spring that has incredible blue water.",
      48.4161341621143,
      9.784132292543294,
      images: ["blautopf1.jpg", "blautopf2.jpg"]),
  DataPoint(
      3,
      EventType.sights,
      "Ulm Minster",
      "Germany",
      "Ulm Minster (German: Ulmer Münster) is a Lutheran church located in Ulm, State of Baden-Württemberg (Germany). It is currently the tallest church in the world[3] and will likely remain so until the eventual completion of Sagrada Familia in Barcelona.",
      "Ulm",
      "Highest Church in Germany i think. It's really impressive. You have to climb it. It's like 5Dollar  or sth. like that.",
      48.39855654870241,
      9.992578073475137,
      images: ["ulmer1.jpeg", "ulmer3.jpeg", "ulmer2.jpeg"]),
  DataPoint(
      4,
      EventType.restaurant,
      "Dulf's Burger",
      "Germany",
      "Dulf’s Burger reflects the entire value chain of Burger creation to the highest quality standards and #derbelecker at the same time: Dulf minces! Dulf forms! Dulf bakes! Everything prepared in-house and without preservatives or flavour enhancing additives!!!",
      "Hamburg",
      "You gotta try out the Milkshake.",
      53.55708975593077,
      9.975202053188674),
  DataPoint(
      5,
      EventType.restaurant,
      "The Brewery | Die Weisse",
      "Austria",
      "Time-tested brewhouse offering a beer garden, generous dishes & a robust selection of wheat beer.",
      "Rupertgasse 10, 5020 Salzburg, Austria",
      "Hei Hapes i Share you my Experience with the resteraunt (Die Weisse) first of all it’s in the beautiful city Salzburg the birth place of Mozart Amadeus, I worked there for few months as a waitress ( season work ) I learned much about traditional Austrian dishes and it was a awesome experience and this resteraunt   Has everything what you need to try in austria my big recommendation for all hapes who wants to visit the beautiful city Salzburg.",
      47.806949717049186,
      13.05170857907682),
  DataPoint(
      6,
      EventType.place,
      "Partnachklamm (in english:  Partnach Gorge)",
      "Germany",
      "Scenic gorge along the Partnach River featuring waterfalls & river rapids, plus walking paths.",
      "Graseck 4, 82467 Garmisch-Partenkirchen",
      "It's a big Gorge where you can walk inside near the river Partnach or you can choose a route witch goes around the Gorge and then you can see the Gorge from a bridge. When I was there it was in the summer and i can recommendation because you can take a half day to walk there and visit everything. In winter it is open to and than you can see some beautifull icicle hanging on the wall (saw this one only in internet).",
      47.465092969837215,
      11.121980842403797,
      images: ["part.jpg"]),
  DataPoint(
      7,
      EventType.restaurant,
      "Suvi",
      "Germany",
      "Creatively plated specialties from across Asia, like sushi, pho & curry, presented in a chic space.",
      "Mannheim, Seckenheimer Straße 95",
      "It’s a modern Asian restaurant. They got some great sushi! If you visit it at any time and want to to connect just let me know, I live the next door 😉",
      49.47710914336075,
      8.490555442737463,
      images: ["Suvi.jpeg"]),
  DataPoint(
      8,
      EventType.restaurant,
      "Pizzeria Odenwaldquelle",
      "Deutschland",
      "Lovely italian pizza restaurant in the center of Klingenberg at Main.",
      "Odenwaldweg 20, 63911 Klingenberg am Main",
      "Lecker Italienisch Essen. Sehr guter Ruf bei uns im Ort",
      49.77729847298024,
      9.1726026255568),
  DataPoint(
      9,
      EventType.restaurant,
      "Muskat",
      "Germany",
      "Creative German & global cuisine with an organic focus, at a stylish locale with a garden courtyard.",
      "Hauptstraße 60, 91054 Erlangen",
      "International, Mediterranean, European - Awesome food, fantastic wine, relaxed place. Go check it out when you're in town.",
      49.60007657229104,
      11.003154283222761),
  DataPoint(
      10,
      EventType.restaurant,
      "The Rock",
      "Tansania",
      "The Rock restaurant rises a short distant from the shore of the beautiful Michanwi Pingwe beach.",
      "Pingwe, Michamvi, Tanzania",
      "It is the most amazing location, great seafood, we had the lobster platter which was simply amazing, for me 10/10 and I will go back next time I'm on Zanzibar",
      -6.151873688644285,
      39.51942002671109),
  DataPoint(
      11,
      EventType.restaurant,
      "SW Steakhouse",
      "United States of America",
      "Elegant Wynn steakhouse offering entrees for both carnivores & vegans, plus open view of water show.",
      "3131 Las Vegas Blvd S, Las Vegas, NV 89109, United States",
      "Best steakhouse I have ever been to. Perfect setting next to the pool, world-class service. Absolute joy",
      36.12736685363778,
      -115.16485175942387),
  DataPoint(
      12,
      EventType.restaurant,
      "The Boathouse Tiki Bar & Grill - Cape Coral",
      "USA",
      "Open-air joint with a deck & small beach offering seafood, cocktails & live music, plus a fuel dock.",
      "5819 Driftwood Pkwy, Cape Coral, FL 33904, United States",
      "Go there at sunrise or sunset. Just amazing",
      26.54203892065788,
      -81.95023138658473),
  DataPoint(
      13,
      EventType.restaurant,
      "The halal guys",
      "USA",
      "The Halal Guys is a halal fast casual restaurant franchise that began as halal carts on the southeast and southwest corners of 53rd Street and Sixth Avenue in Manhattan, New York City.",
      "307 E 14 St. New York, NY 10003",
      "Gotta try their gyro or chicken platter!",
      40.73256735760651,
      -73.98439180165387),
  DataPoint(
      14,
      EventType.restaurant,
      "Eating Kaek in Jerusalem's Old Town",
      "Israel",
      "",
      "Jerusalem Old Town",
      "Kaek is a special type of bread only being sold in Jerusalem. You can find it pretty much anywhere in the Old Town (bakeries and on the street). It is an amazing breakfast together with some falafel.",
      31.778240603345445,
      35.232971541540124,
      images: ["kaek.jpg"]),
  DataPoint(
      15,
      EventType.restaurant,
      "Ugly Baby (Thai Restaurant)",
      "USA",
      "Thai eatery devoted to flavors from different regions in soups, spicy curries & other specialties.",
      "407 Smith St, Brooklyn, NY 11231, United States",
      "Thai eatery located in Brooklyn.",
      40.678048674509654,
      -73.99612374583184),
  DataPoint(
      16,
      EventType.restaurant,
      "Overstory",
      "USA",
      "Overstory is located at 70 Pine Street between Pearl and William in Manhattan's Financial District. Cocktail bar located in lower Manhattan.",
      "70 Pine St 64th Floor, New York, NY 10005, United States",
      "",
      40.70660227651525,
      -74.00778223048987),
  DataPoint(
      17,
      EventType.restaurant,
      "The Dead Rabbit NYC",
      "USA",
      "This 2-story spot combines a lunch taproom with a parlor serving small plates & vintage cocktails.",
      "30 Water St, New York, NY 10004, United States",
      "Cocktail bar located in lower Manhattan",
      40.70347551601102,
      -74.01112746117249),
  DataPoint(
      18,
      EventType.sights,
      "Chinggis Khaan Statue Complex",
      "Mongolia",
      "Complex featuring a large equestrian statue of Genghis Khan as well as an underground museum.",
      "RG5H+6WW, Ulaanbaatar, Nalaikh, Mongolia",
      "A must-see when in Mongolia!",
      47.80821525260649,
      107.52969638132883,
      images: ["Chinggis1.jpg"]),
  DataPoint(
      19,
      EventType.place,
      "Turtle Rock",
      "Mongolia",
      "Well known as sightseeing destination, gigantesque rock made and carved into a turtle by only wind and rain water, which is just off the main road into the park.",
      "Gorkhi-Terelj National Park, Mongolia",
      "",
      47.90783478739779,
      107.4226908985199,
      images: ["turtle.jpg"]),
  DataPoint(
      20,
      EventType.place,
      "El Gouna (beach)",
      "Egypt",
      "El Gouna is a modern resort town on Egypt’s Red Sea, near Hurghada. It’s built along the shore and on small islands, and is known for its lagoons, coral reefs and sandy beaches. Among these is long, wide Mangroovy Beach, popular with kitesurfers. Lively Abu Tig Marina is lined with restaurants and bars. In the downtown area, Tamr Henna Square has palm trees, shops and cafes with outside seating.",
      "الجونة Hurghada Red Sea Governorate Egypt",
      "",
      27.401334437200074,
      33.664683754597036),
  DataPoint(
      21,
      EventType.place,
      "El Nido, Palawan",
      "Philippines",
      "El Nido is a Philippine municipality on Palawan island. It’s known for white-sand beaches, coral reefs and as the gateway to the Bacuit archipelago, a group of islands with steep karst cliffs. Miniloc Island is famed for the clear waters of its Small and Big lagoons. Nearby Shimizu Island has fish-filled waters. The area has many dive sites, including Dilumacad Island’s long tunnel leading to an underwater cavern.",
      "Palawan Island",
      "",
      11.189889014401333,
      119.47405283621556),
  DataPoint(
      22,
      EventType.place,
      "Aswan",
      "Egypt",
      "Aswan, a city on the Nile River, has been southern Egypt’s strategic and commercial gateway since antiquity. It contains significant archaeological sites like the Philae temple complex, on Agilkia Island near the landmark Aswan Dam. Philae’s ruins include the columned Temple of Isis, dating to the 4th century B.C. Downriver, Elephantine Island holds the Temple of Khnum, from the Third Dynasty.",
      "Aswan",
      "",
      24.09045309623837,
      32.8997627598984),
  DataPoint(
      23,
      EventType.place,
      "Luxor",
      "Egypt",
      "Luxor is a city on the east bank of the Nile River in southern Egypt. It's on the site of ancient Thebes, the pharaohs’ capital at the height of their power, during the 16th–11th centuries B.C. Today's city surrounds 2 huge, surviving ancient monuments: graceful Luxor Temple and Karnak Temple, a mile north. The royal tombs of the Valley of the Kings and the Valley of the Queens are on the river’s west bank",
      "Luxor",
      "",
      25.691224430086393,
      32.64024041556635),
  DataPoint(
      24,
      EventType.place,
      "Jumeirah Beach Residence",
      "UAE",
      "Jumeirah Beach Residence is a 1.7 kilometres long, 2 square kilometres gross floor area waterfront community located on the coast of the Persian Gulf in Dubai Marina in Dubai, United Arab Emirates. It is a residential development and contains 40 towers.",
      "Jumeirah Beach Residence, Dubai, UAE",
      "",
      25.07764986374981,
      55.13508081265292),
  DataPoint(
      25,
      EventType.place,
      "Ottawa",
      "Canada",
      "Ottawa is Canada’s capital, in the east of southern Ontario, near the city of Montréal and the U.S. border. Sitting on the Ottawa River, it has at its centre Parliament Hill, with grand Victorian architecture and museums such as the National Gallery of Canada, with noted collections of indigenous and other Canadian art. The park-lined Rideau Canal is filled with boats in summer and ice-skaters in winter.",
      "Ottawa, Canada",
      "",
      45.41535089952942,
      -75.71918502080196),
  DataPoint(
      26,
      EventType.sights,
      "CN Tower",
      "Canada",
      "The CN Tower is a 553.3 m-high concrete communications and observation tower located in the downtown core of Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name 'CN' originally referred to Canadian National, the railway company that built the tower.",
      "290 Bremner Blvd, Toronto, ON M5V 3L9, Canada",
      "",
      43.64279133534229,
      -79.3870460727508),
  DataPoint(
      27,
      EventType.restaurant,
      "KŌST",
      "Canada",
      "Airy restaurant with towering views of the city serving seasonal dishes inspired by Bajan cuisine.",
      "80 Blue Jays Way 44th Floor, Toronto, ON M5V 2G3, Canada",
      "",
      43.645358888866106,
      -79.39238110158605),
  DataPoint(
      28,
      EventType.place,
      "Saint-Catherine Street",
      "Canada",
      "Sainte-Catherine Street is the primary commercial artery of Downtown Montreal, Quebec, Canada. It crosses the central business district from west to east; beginning at the corner of Claremont Avenue and de Maisonneuve Boulevard in Westmount, and ending at the Grace Dart Extended Care Centre by Cadillac metro station.",
      "Saint-Catherine Street, Montreal",
      "",
      45.481999848549634,
      -73.59242460154145),
  DataPoint(
      29,
      EventType.restaurant,
      "Keens Steakhouse",
      "USA",
      "Enormous steaks & signature mutton chops served in a maze of clubby, wood-paneled rooms.",
      "72 W 36th St, New York, NY 10018, United States",
      "",
      40.750814050215965,
      -73.98649615932422),
  DataPoint(
      30,
      EventType.restaurant,
      "Nusr-Et Steakhouse New York",
      "USA",
      "Outpost of a high-end international steakhouse chain by a chef known for his dramatic serving style.",
      "60 W 53rd St, New York, NY 10019, United States",
      "",
      40.761475718566274,
      -73.97879124398273),
  DataPoint(
      31,
      EventType.sights,
      "Empire State Building",
      "USA",
      "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan in New York City, United States. It was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from 'Empire State', the nickname of the state of New York.",
      "20 W 34th St, New York, NY 10001, United States",
      "",
      40.74873679435318,
      -73.98573634398292),
  DataPoint(
      32,
      EventType.sights,
      "Rockefeller Center",
      "USA",
      "Rockefeller Center is a large complex consisting of 19 commercial buildings covering 22 acres between 48th Street and 51st Street in Midtown Manhattan, New York City",
      "45 Rockefeller Plaza, New York, NY 10111, United States",
      "",
      40.75984339753979,
      -73.97863644213542),
  DataPoint(
      33,
      EventType.restaurant,
      "Levain Bakery - Williamsburg",
      "USA",
      "A variety of sizeable cookies, homemade bread & baked treats are the draw at this cozy offshoot.",
      "164 N 4th St, Brooklyn, NY 11211, United States",
      "",
      40.7160248380317,
      -73.95908588816022),
  DataPoint(
      34,
      EventType.place,
      "Akihabara",
      "Japan",
      "Akihabara is a buzzing shopping hub famed for its electronics retailers, ranging from tiny stalls to vast department stores like Yodobashi Multimedia Akiba. Venues specializing in manga, anime, and video games include Tokyo Anime Center, for exhibits and souvenirs, and Radio Kaikan with 10 floors of toys, trading cards, and collectibles. Staff dressed as maids or butlers serve tea and desserts at nearby maid cafes",
      "Taito City, Tokyo 110-0006, Japan",
      "",
      35.702268267340024,
      139.77460564241474),
  DataPoint(
      35,
      EventType.place,
      "Shinjuku City",
      "Japan",
      "Shinjuku City encompasses the buzzing clubs and karaoke rooms of neon-lit East Shinjuku and upscale hotel bars and restaurants in the Skyscraper District. Tokyo Metropolitan Building has a popular observation deck, and Mount Hakone rises over tranquil urban parkland. Galleries, theaters, and bookstores attract students from busy campuses. New National Stadium is a high-tech sports venue built for the 2020 Olympics.",
      "Shinjuku City,  Tokyo, Japan",
      "",
      35.70228067839545,
      139.7090251233874),
  DataPoint(
      36,
      EventType.place,
      "Bordeaux",
      "France",
      "Bordeaux, hub of the famed wine-growing region, is a port city on the Garonne River in southwestern France. It’s known for its Gothic Cathédrale Saint-André, 18th- to 19th-century mansions and notable art museums such as the Musée des Beaux-Arts de Bordeaux. Public gardens line the curving river quays. The grand Place de la Bourse, centered on the Three Graces fountain, overlooks the Miroir d’Eau reflecting pool.",
      "Bordeaux, France",
      "",
      44.84812035771819,
      -0.5777737422444749),
  DataPoint(
      37,
      EventType.other,
      "Iberostar Selection Cancún",
      "Mexico",
      "Overlooking Playa Delfines beach, this luxe all-inclusive resort is 5 km from the Interactive Aquarium Cancun and 8 km from Wet'n Wild Cancun water park.",
      "km 17, Blvd. Kukulcan, Zona Hotelera, 77500 Cancún, Q.R., Mexico",
      "",
      21.067478219192026,
      -86.77799900441303),
  DataPoint(
      38,
      EventType.place,
      "Petaling Street Market",
      "Malaysia",
      "Bustling shopping district with haggling vendors offering a range of goods, from clothing to food.",
      "Jalan Petaling, City Centre, 50000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia",
      "",
      3.144254084495974,
      101.6983520071376),
  DataPoint(
      39,
      EventType.place,
      "Düsseldorf",
      "Germany",
      "Düsseldorf is a city in western Germany known for its fashion industry and art scene. It's divided by the Rhine River, with its Altstadt (Old Town) on the east bank and modern commercial areas to the west. In the Altstadt, St. Lambertus Church and Schlossturm (Castle Tower) both date to the 13th century. Streets such as Königsallee and Schadowstrasse are lined with boutique shops",
      "Düsseldorf, Germany",
      "",
      51.229607704306574,
      6.776589893358425),
   DataPoint(
      41,
      EventType.restaurant,
      "Ford's Garage, Ft. Myers",
      "USA",
      "Casual American chow & 180+ craft beers served in vibrant, warm-hued digs with brick & wood decor.",
      "2207 First St, Fort Myers, FL 33901, United States",
      "",
      26.64437854219293,
      -81.8705161730892),
  DataPoint(
      42,
      EventType.restaurant,
      "Beacon Social Drinkery",
      "USA",
      "Twelve stories up, our rooftop bar lights up downtown Fort Myers with a dizzying selection of craft cocktails, fine wines, craft beer and champagnes, served alongside a refreshing menu of small plate specialties, high above the Caloosahatchee.",
      "2200 Edwards Dr, Fort Myers, FL 33901, United States",
      "Amazing view over the river! Make sure to check it out during sunset!",
      26.64543338345358,
      -81.87129937814571),
  DataPoint(
      43,
      EventType.restaurant,
      "Ya | The Mandarin Room 黄鹤楼",
      "Germany",
      "Chinese restaurant offering dim sum, Canton duck & tea ceremonies in a sleek venue.",
      "Leopoldstraße 42, 80802 Munich",
      "Their roast Beijing duck and dim sum variety is to die for!",
      48.15706013587684,
      11.584787112020361),
  DataPoint(
      44,
      EventType.sights,
      "Mount Rushmore National Memorial",
      "USA",
      "Massive mountainside sculpture drawing crowds for its depiction of 4 former American presidents.",
      "13000 SD-244, Keystone, SD 57751, United States",
      "Must-see spot! Make sure to explore the surrounding Black Hills as well!",
      43.876656117363744,
      -103.45387158126023),
  DataPoint(
      45,
      EventType.sights,
      "Crazy Horse",
      "USA",
      "Crazy Horse Memorial Started in 1948, this vast, unfinished mountain carving shares a site with a Native American museum.",
      "Crazy Horse, SD 57730, United States",
      "Started in 1948, this vast, unfinished mountain carving shares a site with a Native American museum.",
      43.83799142164427,
      -103.62270608481089),
  DataPoint(
      46,
      EventType.restaurant,
      "Love Boat Homemade Ice Cream",
      "USA",
      "Colorful shop with many flavors of handmade ice cream & sorbet, including fat- & sugar-free options.",
      "16475 San Carlos Blvd, Fort Myers, FL 33908, United States",
      "Amazing ice-cream in over 50 flavors. Make sure to try their cinnamon pecan caramel one! Soo good!",
      26.50211921922664,
      -81.94310514425607),
  DataPoint(
      47,
      EventType.place,
      "798 Art Zone",
      "China",
      "The 798 Art District, also known as Dashanzi, is a cluster of former military factories now housing hip creative spaces like 798 Photo Gallery and the Ullens Center for Contemporary Art, showing established and emerging Chinese artists. Outdoor sculpture installations sit alongside boutiques offering quirky fashion and artsy gifts. Al fresco brunches and specialty coffee are the draw at the area’s chic cafes",
      "2  Jiuxianqiao Rd, Chaoyang, Beijing, China, 100102",
      "It's best to visit during lunch time. Make sure to check out some of the hip cafes and restaurants! Also make sure to check out all the small side streets and Art galleries.",
      39.98444395127491,
      116.49537935072337),
  DataPoint(
      48,
      EventType.restaurant,
      "Slow Boat Brewery Brewpub",
      "China",
      "Slow Boat Brewery is a microbrewery located in Chaoyang District, Beijing. Since 2016, the company has operated a brewpub in Sanlitun. In December 2018, Slow Boat Brewery announced plans to open a second location at Dengshikou in Beijing.",
      "6 Sanlitun South Road, Beijing 100027 China",
      "Amazing craft beers and Burgers! Be sure to try out some different kinds!",
      39.9310826124203,
      116.45556896764542),
  DataPoint(
      49,
      EventType.restaurant,
      "Imbiss Zagros",
      "Germany",
      "Best kebap in the world (trust)",
      "Crailsheim/Berliner Platz",
      "Best kebap in the world (trust)",
      0,
      0),
  DataPoint(
      50,
      EventType.restaurant,
      "Chickpeas",
      "Canada",
      "Snug, unfussy eatery highlighting freshly made falafels, oil-free hummus & baba ganoush.",
      "931 Bank St, Ottawa, ON K1S 3W5, Canada",
      "Great vegerarian cuisine!",
      45.400520110376036,
      -75.68673727270803),
  DataPoint(
      51,
      EventType.restaurant,
      "K&W shawarma",
      "Canada",
      "Straightforward restaurant serving shawarma grilled meat wraps, plus salads & veggie options.",
      "180 Lees Ave, Ottawa, ON K1S 5J6, Canada",
      "",
      45.41550963487231,
      -75.67080080154298),
  DataPoint(
      52,
      EventType.restaurant,
      "C'est Japon À Suisha Restaurant",
      "Canada",
      "Polished destination with old-world private rooms & an upscale menu of rolls & Japanese dishes.",
      "208 Slater St., Ottawa, ON K1P 5H8, Canada",
      "",
      45.41964899259367,
      -75.69921901688421),
  DataPoint(
      53,
      EventType.restaurant,
      "Riviera ",
      "Canada",
      "High-end, creative Canadian cuisine & drinks in the refined interior of a former bank building.",
      "62 Sparks St., Ottawa, ON K1P 5A5, Canada",
      "",
      45.42323407365431,
      -75.69632915921358),
  DataPoint(
      54,
      EventType.restaurant,
      "Sidedoor",
      "Canada",
      "Intimate modern stop for internationally inspired entrees, tapas & tacos, plus wine & patio seating.",
      "18b York St, Ottawa, ON K1N 5T5, Canada",
      "",
      45.427335875543896,
      -75.69394618804863),
  DataPoint(
      55,
      EventType.restaurant,
      "Del Piacere",
      "Canada",
      "Informal eatery known for its brunch & globally inspired entrees like bobotie & jerk ribs.",
      "416 Preston St, Ottawa, ON K1S 4M9, Canada",
      "",
      45.40079424328743,
      -75.70969750154345),
  DataPoint(
      56,
      EventType.restaurant,
      "The NoBody Inn",
      "England",
      "It's a traditional pub with hundreds of years of history in the tiniest little Devonshire village, but it has fantastic food and I believe at least in the early 2000 it had the largest Whisky collection and the second largest wine cellar in the UK! People travel down from London regularly and so should you! ",
      "Doddiscombsleigh, Exeter EX6 7PS, United Kingdom",
      "",
      50.667662182043976,
      -3.620959374419499),
  DataPoint(
      57,
      EventType.restaurant,
      "Cafe Winklstüberl",
      "Germany",
      "Small family-owned and operated Bavarian themed restaurant.",
      "Leitzachtalstraße 68, 83730 Fischbachau",
      "It's a traditional Bavarian cafe where you can eat Bavarian meals or drink some coffee with a cake. They have many different cakes, which are hand made by their own baker. Everything taste really good. I can recommend to eat 'Käsespätzle' or 'Apple strudel'. It is important to have a reservation, because on the weekend this cafe is full. ",
      47.72997254218513,
      11.953592056186,
      images: ["Winklstuberl.jpg"]),
  DataPoint(
      58,
      EventType.restaurant,
      "Türkitch",
      "Germany",
      "Small venue prepping a variety of kebabs with a choice of sauces, plus falafel sandwiches & salads.",
      "Humboldtstraße 20, 81543 München",
      "They sell Turkish street food like döner, köfte etc but in my opinion it's one of the best döner in Munich. I recommend to buy the köfte burger or something with falafel",
      48.1201583263643,
      11.573511727360714,
      images: ["Turkitch.jpeg"]),
  DataPoint(
      59,
      EventType.restaurant,
      "Mustafa's Gemüse Kebap",
      "Germany",
      "Takeout spot for kebabs stuffed with hand-cut chicken or fried veggies, plus spicy or yogurt sauces",
      "21-24 Stachus, 80335 München",
      "Very good Kebap with vegetable, but you always must wait about 30min to order, because there is always a long queue.",
      48.1385170530429,
      11.564723780754521,
      images: ["Mustafa.jpg"]),
  DataPoint(
      60,
      EventType.restaurant,
      "Curley's Cheesesteak",
      "United States",
      "Offering up tasty creations & comfort foods from hand cut ribeye cheesesteaks & wings, to our Mac and Cheese, Chicken Pot Pies, burgers & so many things in between.",
      "1140 Bristol Oxford Valley Rd, Levittown, PA 19057",
      "If you are looking for the best cheesesteak in town, Curley's is definitely the place to go. Warning, plan on waiting in line as they are always busy. ",
      40.16611005308746,
      -74.87516814584339),
  DataPoint(
      61,
      EventType.restaurant,
      "Plaza Azteca Mexican Restaurant",
      "USA",
      "Casual chain offering a broad menu of Mexican standards, including guacamole made tableside. I go here a lot when I want Mexican food. ",
      "153 S Gulph Rd, King of Prussia, PA 19406",
      "",
      40.084292503609916,
      -75.38703548632732),
  DataPoint(
      62,
      EventType.restaurant,
      "Seasons 52",
      "USA",
      "Rotating menu of seasonal American dishes alongside international wines in an upscale setting.",
      "160 N Gulph Rd Suite 101, King of Prussia, PA 19406",
      "This place is awesome in that they have a dynamic menu that always changes according to the season. You can keep coming back and not eat the same thing twice. ",
      40.0859078226137,
      -75.39442127283316),
  DataPoint(
      63,
      EventType.activity,
      "Patek Philippe Museum",
      "Switzerland",
      "Museum telling the story of Patek Phillippe & Swiss watchmaking from the 16th century to now.",
      "Rue des Vieux-Grenadiers 7, 1205 Genève, Switzerland",
      "",
      46.198441831957226,
      6.138189169641181),
  DataPoint(
      64,
      EventType.restaurant,
      "ZWØLF by Yankee&Kraut",
      "Germany",
      "Craftbeer bar in Ingolstadt (home of the German beer purity law)",
      "Kreuzstraße 6, 85049 Ingolstadt",
      "Make sure to try out some of their home-made craft beers, but be careful some are quite strong! ;)",
      48.76397934830799,
      11.419748756212718),
  DataPoint(
      65,
      EventType.restaurant,
      "Eethuys 't Pleintje",
      "Netherlands",
      "Fast food restaurant known from TV show New Kids",
      "Groot Grinsel 16-A, 5275 BZ Den Dungen, Netherlands",
      "If you've enjoyed New Kids you'll love this place!",
      51.665926679194314,
      5.371566913960775),
  DataPoint(
      66,
      EventType.activity,
      "Efteling",
      "Netherlands",
      "Amusement park with fairytale-themed rides, wooden roller coasters & water fountain & light show.",
      "Europalaan 1, 5171 KW Kaatsheuvel, Netherlands",
      "Try to visit during the week to avoid longer wait times.",
      51.651053889746926,
      5.050474921726974),
  DataPoint(
      67,
      EventType.restaurant,
      "Waldhaus Restaurant",
      "Canada",
      "Upscale bar/eatery in a Bavarian-style cottage with German-inspired alpine dishes & outdoor seating.",
      "405 Spray Ave, Banff, AB T1L 1J4, Canada",
      "Their cheese fondue is soo good!",
      51.16448236148326,
      -115.55891925721751),
  DataPoint(
      68,
      EventType.sights,
      "Glaciar Vinciguerra",
      "Argentina",
      "Guided treks on a sprawling glacier to explore ice caverns & spot blue-green lakes in the distance.",
      "Ushuaia, Tierra del Fuego Province, Argentina",
      "There's a small ice cave, make sure to check it out!",
      -54.72633597480904,
      -68.33632625896615),
  DataPoint(
      69,
      EventType.place,
      "Cliffs of Moher",
      "Ireland",
      "The Cliffs of Moher are sea cliffs located at the southwestern edge of the Burren region in County Clare, Ireland. They run for about 14 kilometres.",
      "Lislorkan North, Co. Clare, Ireland",
      "",
      52.96966445015279,
      -9.426518883356144),
  DataPoint(
      70,
      EventType.place,
      "The Twist, Kistefos Sculpture Park, ",
      "Norway",
      "The Twist is an art gallery in the Kistefos Sculpture Park. The Twist was created by its architects as a warped bridge to create a sculptural form that compliments the surrounding environment.",
      "Karl Johans gate 31, 0159 Oslo, Norway",
      "",
      59.91376143632795,
      10.7395712681733,
      images: ["Twist.PNG"]),
  DataPoint(
      71,
      EventType.place,
      "MONOGATARI  Nobuo Sekine Works Exhibition",
      "China",
      "MONOGATARI' Nobuo Sekine Works Exhibition ",
      "Shanghai",
      "",
      0,
      0,
      images: ["Glaciar.PNG"]),
  DataPoint(
      72,
      EventType.place,
      "Jingshan Park",
      "China",
      "Jingshan Park is an imperial park covering 23 hectares immediately north of the Forbidden City in the Imperial City area of Beijing, China. The focal point is the artificial hill Jingshan, literally 'Prospect Hill'.",
      "44 Jingshan W St, 景山 Xicheng District, Beijing, China, 100009",
      "Amazing view from the top of the Jingshan hill all over the forbidden City!.",
      39.925213968157244,
      116.3968432979935),
  DataPoint(
      73,
      EventType.activity,
      "Shopping at Silk Street Market ",
      "China",
      "Silk Street, aka Silk Market or Silk Street Market, is a shopping center in Chaoyang District, Beijing, that accommodates over 1,700 retail vendors, notorious among international tourists for their wide selection of counterfeit designer brand apparel",
      "China, Beijing, Chaoyang, 秀水东街8号 邮政编码: 100020",
      "Silk Street, aka Silk Market or Silk Street Market, is a shopping center in Chaoyang District, Beijing, that accommodates over 1,700 retail vendors, notorious among international tourists for their wide selection of counterfeit designer brand apparel",
      39.909456121062746,
      116.44972519870794),
  DataPoint(
      74,
      EventType.restaurant,
      "The Bell / Martini roof top bar",
      "China",
      "A Western-style restaurant serving burgers, pizza, and other such fare in the location formerly occupied by Migas' restaurant in Nali Patio.",
      "6/F, Nali Patio, 81 Sanlitun Lu Chaoyang District 朝阳区 三里屯路81号那里花园六层",
      "A Western-style restaurant serving burgers, pizza, and other such fare in the location formerly occupied by Migas' restaurant in Nali Patio.",
      39.93608728850306,
      116.45498528521752),
  DataPoint(
      75,
      EventType.sights,
      "Eisbachwelle",
      "Germany",
      "There's year-round surfing on this continuous wave on the Englischer Garten's Eisbach River.",
      "Prinzregentenstraße, 80538 München",
      "Cool place to hangout in the summertime and watch surfers tackling the waves!",
      48.14359968214854,
      11.587729598883659),
  DataPoint(
      76,
      EventType.place,
      "Nahuel Huapi Lake",
      "Argentina",
      "Nahuel Huapi Lake is a lake in the lake region of northern Patagonia between the provinces of Río Negro and Neuquén, in Argentina. The tourist center of Bariloche is on the southern shore of the lake.",
      "San Carlos de Bariloche, Argentina",
      "",
      -40.90000314455164,
      -71.51483791372398,
      images: ["Nahuel.jpeg"]),
  DataPoint(
      77,
      EventType.place,
      "Celebration Park",
      "USA",
      "Riverfront area features a visitor center & historic bridge tours, plus camping, fishing & hiking.",
      "5000 Victory Ln, Melba, ID 83641, United States",
      "",
      43.299357661554566,
      -116.52512868773186),
  DataPoint(
      78,
      EventType.restaurant,
      "Cook's Two Hole Bar & Grill",
      "USA",
      "Small town bar with fast casual food offer.",
      "313 Broadway Ave, Melba, ID 83641, United States",
      "Small-town bar! They serve the best burgers in town for sure! Always enjoyable for a round or two of pool!",
      43.375424640983084,
      -116.53127885889386),
  DataPoint(
      79,
      EventType.restaurant,
      "First Watch",
      "USA",
      "Cafe chain for health-minded breakfast, brunch & lunch options such as omelets, salads & soups.",
      "13211 McGregor Blvd, Fort Myers, FL 33919, United States",
      "Lovely offer of breakfast and lunch items! Their pancakes are amazing!",
      26.54967133498251,
      -81.91243710337082),
  DataPoint(
      80,
      EventType.place,
      "Swan Falls Dam",
      "USA",
      "Hydroelectric power plant and great spot for fishing.",
      "Murphy, ID 83650, United States",
      "",
      43.245053728219325,
      -116.3783133238603),
  DataPoint(
      81,
      EventType.restaurant,
      "Napoli Rush",
      "Germany",
      "A place to find out of the ordinary pizza; Take away, delivery or to enjoy on the spot. Where you can shop for authentic italian groceries and pizza ingredients in Munich.",
      "Theresienstraße 156, 80333 Munich",
      "Best Neapolitan style Pizza in the area!",
      48.152297192698065,
	 11.561153056034017),
  DataPoint(
      82,
      EventType.restaurant,
      "Sapporo Ramen TAKUMI Munich",
      "Germany",
      "Ramen noodle soups with toppings like pork slices, eggs & spring onions at a spacious, modern venue.",
      "Heßstraße 71, 80798 Munich",
      "Better make sure to bring some time as the queues get quite long during lunch time! :)",
      48.153321916524575,
 	11.56094266312021),
    DataPoint(
      83,
      EventType.restaurant,
      "Concierge Café Berlin",
      "Germany",
      "Coffeeshop in Berlin Kreuzberg",
      "Paul-Lincke-Ufer 39-40, 10999 Berlin",
      "Best cafe in Berlin Kreuzberg!",
      52.49619178980876,
	 13.422191954237057),
  DataPoint(
      84,
      EventType.restaurant,
      "The Black Lodge",
      "Germany",
      "Twin Peaks-themed cocktail bar with low lights, zigzag-patterned floors & the TV series on screen.",
      "Sanderstraße 6, 12047 Berlin",
      "Nice cocktail bar",
      52.49220020445846,
 13.424359611750122),
  DataPoint(
      85,
      EventType.restaurant,
      "YAFO Restaurant",
      "Germany",
      "Hummus, meze platters & cocktails, plus Israeli food with a vegetarian focus in a cozy space.",
      "Ritterstraße 12-14, 10969 Berlin",
      "",
      52.5022058846916, 
13.411242323942957),
  DataPoint(
      86,
      EventType.place,
      "Iztuzu Beach (Turtle Beach)",
      "Turkey",
      "İztuzu Beach is a 4.5 km long beach near Dalyan, in the Ortaca district of the Province of Muğla in southwestern Turkey. The beach is a narrow spit of land, which forms a natural barrier between the fresh water delta of the Dalyan river and the Mediterranean.",
      "Çandır, 48800 Ortaca/Muğla, Turkey",
      "It's a 4,5km long island where you only can reach it with a boat. In August you see some spots, where turlte eggs are under the sand and when you have luck, you can see a turtle in the sea. In 2019 I saw a turtle maybe 4m away from me. In September the turtle are born and than you can find there some baby turtles",
      36.77744568652729,
 28.63082994011398),
  DataPoint(
      87,
      EventType.activity,
      "Paragliding",
      "Turkey",
      "Mountain with dual summits & sea views, popular as a launch site for paragliding.",
      "Karaağaç, 48300 Fethiye/Muğla, Turkey",
      "You can do paragliding there on a Mointain which is about 2km high. From there you have a beautiful view over Fethiye, Ölüdeniz and the area around the mountain. Off course you can watch the sunset too ",
      36.52977983377041,
 29.184999907109137),
  DataPoint(
      87,
      EventType.place,
      "Oludeniz Beach",
      "Turkey",
      "Nature reserve with a calm lagoon & curved beach, popular for paragliding, swimming & scuba diving.",
      "Muğla, Turkey",
      "It's a beautiful sand beach with a turquoise sea.",
      36.54708674103496, 29.12138902447796),
        DataPoint(
      88,
      EventType.restaurant,
      "Brisas del Mar",
      "Mexico",
      "Little mexican restaurant with an amazing view.",
      "Playa Zicatela, 70934 Brisas de Zicatela, Oaxaca, Mexiko",
      "You have to try their smoothies.",
      15.854234157733954, -97.05437111602573)
];

class DataPoint {
  int id;
  EventType type;
  String country;
  String name;
  String description;
  String tips;
  String address;
  double lat;
  double lng;
  List<String> images;

  DataPoint(this.id, this.type, this.name, this.country, this.description,
      this.address, this.tips, this.lat, this.lng,
      {images})
      : images = images ?? [];
}