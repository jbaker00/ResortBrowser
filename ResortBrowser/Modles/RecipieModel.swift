import Foundation
enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case beach = "Beach"
    case mountain = "Mountain"
    case city = "City"
    case desert = "Desert"
}
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let city: String
    let country: String
    let category: Category.RawValue
    let airport: String
    let url: String
}
extension Recipe {
    static let all: [Recipe] = [
Recipe(
name: "Shore House at The Del",
image: "https://www.hospitalitynet.org/picture/xxl_153146272.jpg?t=1663310625",
description: "Located within the iconic resort  our hotel’s one-bedroom to three-bedroom residences feature balconies and ocean  bay  or landmark views. Experience a private arrival and enjoy access to the resort’s spa and restaurants. The hotel is close to Coronado Island shops and dining and features a lounge  bistro and ocean-view pool. The lively nightlife of the Gaslamp Quarter is just five miles away.",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/stay/shore-house/"
),
Recipe(
name: "Beach Village at The Del",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/46/ba/1a/beach-village-at-the.jpg?w=2000&h=-1&s=1",
description: "An exclusive enclave of residential cottages and villas along the golden sands of Coronado Beach. Highly personalized concierge service and a secluded experience. Choose a stylish guest room or suite from one to three bedrooms including a patio or balcony.",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/stay/beach-village/"
),
Recipe(
name: "Hotel Del Coronado",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5a/eb/6f/hotel-del-coronado.jpg?w=700&h=-1&s=1",
description: "On the edge of the Pacific  where powdery white sands sparkle like gold  the legendary Hotel del Coronado  Curio Collection by Hilton  offers a magical beachfront experience unrivaled on the West Coast. An iconic presence since 1888  Hotel del Coronado combines majestic Victorian architecture  modern luxuries and beachfront recreation for a resort experience that’s uniquely Southern California.",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/"
),
Recipe(
name: "Conrad Punta Mita",
image: "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/279689605.jpg?k=1a3d6244daa51e117557266d4a28c4836c21cdaefbdefd81eab27cb747e555b3&o=&hp=1",
description: "Conrad Punta de Mita is part of the Litibu gated community  situated along the tranquil Riviera Nayarit. Enjoy serene guest rooms with private balconies featuring stunning Pacific Ocean views  seven diverse dining and bar options with 24-hour room service  our on-site spa  three outdoor pools  54 000 sq ft of event space  and more.",
city: "Punta Mita, Nayarit",
country: "Mexico",
category: "Beach",
airport: "PVR",
url: "https://www.hilton.com/en/hotels/pvrpmci-conrad-punta-de-mita/"
),
Recipe(
name: "Planet Hollywood Costa Rica",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/4c/4f/83/main-pool.jpg?w=1400&h=-1&s=1",
description: "Vacation like a Star at the new Planet Hollywood Beach Resort Costa Rica. Guests of all ages can get close to authentic Hollywood memorabilia and enjoy themed experiences in this natural and breathtaking beachfront setting on the famed Pacific coast of Costa Rica. Guests can choose from a variety of all-inclusive dining venues and bars or indulge in extra services at the PH Spa and Beauty Bar.   Sleep Famousl atop our PHabulous Bed  a handcrafted custom mattress with bedding developed   Plugged In Unlimited high speed Wi-Fi resort-wide  for all your devices   Main Event Guarantee  Never miss big entertainment moments!   Your Soundtrac Pick your music theme during your stay in paradise   Crave - Global culinary experiences   PUMPED Fitness Center - First-class work out with professional instructors  daily classes  and the latest cardio and strength training equipment",
city: "Costa Mujeres, Q.R",
country: "Costa Rica",
category: "Beach",
airport: "LIB",
url: "https://www.planethollywoodhotels.com/resorts/costa-rica"
),
Recipe(
name: "Hilton Hawaiian Village Waikiki Beach Resort",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/cf/78/ba/hilton-hawaiian-village.jpg?w=2000&h=-1&s=1",
description: "Hilton Hawaiian Village is Waikikis only true resort destination located on the widest stretch of beach in Waikiki. Do as much or as little as you like on Duke Kahanamoku Beach and Lagoon  the world-famous stretch of pristine white sands and azure waters fronting the Hilton Hawaiian Village Waikiki Beach Resort. Unwind beside five sparkling pools  which include a 10 000-square-foot Super Pool and the multi-layered Paradise Pool  featuring dramatic waterfalls and one of the only water slides in Waikiki. In this inspiring setting  we provide our guests with a destination to find reflection  renewal and indulge in new experiences unique to Hawaii and Waikiki.",
city: "Honolulu, Hawaii",
country: "USA",
category: "Beach",
airport: "HNL",
url: "https://www.hiltonhawaiianvillage.com/"
),
Recipe(
name: "Ambergris Cay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/14/bb/4c/villas-on-columbus-beach.jpg?w=1400&h=-1&s=1",
description: "Ambergris Cay is a private island offering premium all inclusive resort accommodations. The 1 100 acre island sits on the southeast corner of the string of the Turks and Caicos Islands that surround the world-famous Caicos Banks. Beachfront Pool Suites feature heated plunge pools  indoor and outdoor showers  and walkout beach access; these suites are well suited for couples or solo travelers seeking a barefoot luxury escape. Ambergris Cay also caters to families  groups  and corporate retreats  offering 8 private homes and luxury villas for rent. The all-inclusive dining experience includes all meals  prepared to order and served a la carte at the Calico restaurant  and top-shelf spirits. Complimentary activities include non-motorized watersports  tennis  onshore fishing  and hiking. Motorized water sports  including reef and bone fishing  and Spa services are available for an additional cost. Complimentary roundtrip private air transfers from Providenciales International Airport in Turks and Caicos (PLS) are provided for guests of Ambergris Cay. You may also arrive by private plane to Ambergris Cay International Airport  affording the ability to clear international customs and immigration  and be settled into your accommodations  within minutes of landing.",
city: "Big Ambergris Cay, Ambergris Cay",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.ambergriscay.com/"
),
Recipe(
name: "Seven Stars Resort and Spa",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/c7/22/f7/seven-stars-resort-spa.jpg?w=1400&h=-1&s=1",
description: "Anchoring the sweeping arc of the world-famous Grace Bay Beach in the Turks and Caicos Islands  Seven Stars Resort blends island hospitality with luxurious all-suite accommodations and world-class amenities. Expansive accommodations range from junior to five-bedroom suites and feature high-end furnishings and finishes  full kitchens or kitchenettes  wrap-around balconies and over-sized marble bathrooms with soaking tubs  terry bathrobes and L’Occitane amenities. Island-inspired cuisine is served in three dining venues. Ideal for couples and families  the oceanfront palm-lined resort features a pool terrace with cabanas  tennis  complimentary water-sports  kids program  spa  fitness center  and nearby championship golf.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.sevenstarsgracebay.com/"
),
Recipe(
name: "Grace Bay Club",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/0d/7a/22/one-bedroom-hotel-luxury-suite--v.jpg?w=2400&h=-1&s=1",
description: "An adult-only all inclusive resort in Turks and Caicos with gorgeous award-winning beaches and thrilling watersports. Travel to Club Med Turkoise with your friends or alone to enjoy an all-inclusive vacation in beachfront tropical scenery on the island of Providenciales  in the Caribbean Sea. Stay at this upscale all-inclusive adult resort and experience a vacation as carefree as exciting. Relax on a beach chair or indulge in the ultimate in water sports and fun activities. As one of the best all-inclusive resorts reserved exclusively for adults  this beautiful location is a destination that allows singles and couples to enjoy their getaway like they never have before.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://gracebayclub.gracebayresorts.com/"
),
Recipe(
name: "The Shore Club",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/07/cd/39/balcony-views.jpg?w=1200&h=-1&s=1",
description: "The Shore Club Turks and Caicos features include 4 swimming pools  5 restaurants / bars  wellness centre including spa and fitness center  complimentary kids club  tennis courts  water sports  rental yacht and so much more! Long Bay Beach—the most private stretch of Providenciales  the most sought after location of the Turks and Caicos Islands—offers the best of both worlds  a stunning  secluded beach just minutes away from Provo’s town center. The resort has been named Most Instagrammable Hotel in the World in both 2021 and 2022.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.theshoreclubtc.com/"
),
Recipe(
name: "The Ritz",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/99/ef/cf/the-ritz-carlton-turks.jpg?w=1400&h=-1&s=1",
description: "The Ritz-Carlton sets the standard in elegance for business and leisure travelers worldwide. The Ritz-Carlton  Turks and Caicos is a luxury resort that offers white-sand beaches  turquoise waves  and global flavors on the Island of Turks and Caicos. Weve been perfecting the art of hospitality and have developed an approach to luxury that has never been duplicated. Indulge yourself in the worlds best luxury resort amenities.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.ritzcarlton.com/en/hotels/caribbean/turks-and-caicos"
),
Recipe(
name: "Windsong",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/e8/4d/f3/windsong-resort.jpg?w=1400&h=-1&s=1",
description: "Windsong Overview A repeat favorite for guests  Windsong is a refreshingly intimate  Caribbean beachfront resort located on Grace Bay and the islands’ best coral reef. Daily Continental breakfast  WIFI  non-motorized watercraft  bicycles  fitness center  underground parking  and chilled water and towels beachside are complimentary. Relaxing spa treatments  romantic candlelight beach dinners  Jojo’s refreshing libations and menu selections  and scheduled entertainment delight Windsong guests. All accommodations offer kitchens or kitchenettes and laundry facilities. All Windsong Rooms are Non-smoking with keyless entry  Marble flooring and ensuite baths  10’ Ceilings and custom cabinetry  Pillowtop beds  Frette towels and bath robes  Bvlgari toiletries  Flat-Screen TVDVD   I-pod docking station   Alarm clock Room-controlled air-conditioning In-room safe",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.windsongresort.com/"
),
Recipe(
name: "The Palms",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/8a/dd/08/pool.jpg?w=800&h=-1&s=1",
description: "The fully renovated  Wymara Resort and Villas brings a signature approach to luxury lifestyle that redefines the destination resort experience. Each of the 91 guestrooms and 7 Villas offers sweeping ocean views positioned and designed to pay homage to the unspoiled island. The resort blends Caribbean cool with sophisticated style to create a sense of place for our guests.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.thepalmstc.com/"
),
Recipe(
name: "Wymara Resort and Villas",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/99/1b/30/gansevoort-turks-caicos.jpg?w=2000&h=-1&s=1",
description: "The fully renovated  Wymara Resort and Villas brings a signature approach to luxury lifestyle that redefines the destination resort experience. Each of the 91 guestrooms and 7 Villas offers sweeping ocean views positioned and designed to pay homage to the unspoiled island. The resort blends Caribbean cool with sophisticated style to create a sense of place for our guests.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://wymararesortandvillas.com/"
),
Recipe(
name: "COMO Parrot Cay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/3e/7f/02/aerial-cbc-and-pools.jpg?w=1400&h=-1&s=1",
description: "Parrot Cay by COMO in the Turks and Caicos is the northern Caribbean’s preeminent private island. It combines nature—1000 unspoilt acres  a mile-long powdered beach—with relaxed luxury and the multi-award-winning COMO Shambhala Retreat  which offers a range of holistic  Asian-inspired therapies as well as yoga and Pilates with world-class tuition. Accommodation  comprising whitewash interiors with chic teak finishing  includes beachside houses and villas. The island also features private residences  offering absolute privacy away from the main resort. The island’s two restaurants serve gourmet and easy dining as well as healthy COMO Shambhala Cuisine. Watersports  diving and island adventures complete the Parrot Cay experience.",
city: "Parrot Cay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.comohotels.com/turks-and-caicos/como-parrot-cay"
),
Recipe(
name: "Amanyara",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/2b/73/1d/amanyara-turks-caicos.jpg?w=1100&h=-1&s=1",
description: "AMANYARA is a luxuriously relaxing beachside resort on Providenciales  in the Turks and Caicos Islands. Situated on a picturesque and private white sand beach  and dotted with rocky coves  AMANYARA borders the Northwest Point Marine National Park  acclaimed as one of the world’s most beautiful locations for snorkeling and reef diving. In addition  the resort is renowned for its Wellness programs and offers a world class spa experience in an exclusive and private retreat setting. Contemporary and stylish in layout  each of our pavilions has been designed to maximize privacy and ambiance. With floor to ceiling windows on 3 walls  enjoy stunning views of the ocean  tranquil ponds  or surrounding gardens. All have private entrances  wooden sundecks and king-size beds. For an exclusive option  try one of our 18 Amanyara Villas; each placed on over 1.5 acres of private gardens and incorporating 4-6 individual pavilions surrounding central living and dining areas. Each includes a private chef and host.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.aman.com/resorts/amanyara"
),
Recipe(
name: "Point Grace",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/f6/56/7d/1-bedroom-suite.jpg?w=1400&h=-1&s=1",
description: "An extraordinary Caribbean retreat  located at the point of the pristine twelve-mile beach of Grace Bay. Inspired by classic  turn-of-the-century British Colonial architecture  the beach front setting looks out upon a shimmering vista of turquoise sea and alabaster beach.Here  in a setting seemingly untouched by time  each suite has been designed to include every luxury  leaving you free to encounter your own personal state of grace. Come and experience it for yourself!",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://pointgrace.gracebayresorts.com/"
),
Recipe(
name: "Beaches Turks and Caicos",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ba/40/0f/beaches-turks-caicos.jpg?w=1400&h=-1&s=1",
description: "Dive into a one-of-a-kind  unbelievably exciting Beaches all-inclusive Turks and Caicos vacation for the whole family.   A 45 000 square-foot waterpark.   4 magnificent villages  boasting the architecture and ambiance of Italy  France  the Caribbean and Key West.   A 12-mile beach lapped by clear turquoise waters.   Endless fun activities for everyone  from tots to tweens and teens  featuring Sesame Street(R) characters  the new Xbox(R) Play Lounge  all located on one of the worlds best beaches.   24 Specialty dining options with everything from Caribbean to Japanese  Italian to French  Seafood to Sushi   7000-sq-ft retail village offering guests high-end jewelry  fashion  candies  souvenirs   Our very own Pirates Island themed aqua-playground hosting one of the Caribbeans most comprehensive water parks featuring nine slides  lazy river  surf simulator  water cannons  cranks and spray features   Voted Beaches Resorts Worlds Leading Family All-Inclusive 22 years in a row.",
city: "Lower Bright Road, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.beaches.com/resorts"
),
Recipe(
name: "Villa Renaissance",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/d7/ab/47/villa-renaissance.jpg?w=1400&h=-1&s=1",
description: "Inspired by the Grand Villas of the Italian and French Riviera  Villa Renaissance is a beautiful  beachfront Hotel located directly on internationally renowned Grace Bay beach in the Turks and Caicos Islands With 28 luxurious one  two and three bedroom beachfront suites and 4 charming and equally luxuriously appointed poolside cottages  Villa Renaissance offers relaxed elegance.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://tcvillas.com/"
),
Recipe(
name: "The Tuscany on Grace Bay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/49/61/14/pool-and-reception.jpg?w=1400&h=-1&s=1",
description: "Privacy  luxury and intimacy are excellent words to describe The Tuscany - a luxury boutique resort offering 30 luxury suites. Located on Grace Bay Beach The Tuscany features an Italian inspired courtyard and European style swimming pool  two lighted tennis courts  complimentary wifi and complimentary bikes  and a fully equipped gym. All suites are oceanfront  with an open concept dining and living area  fully equipped kitchens with state of the art stainless steel appliances  granite countertops  travertine marble flooring. Master bedrooms with king bed overlook Grace Bay; the other two bedrooms  a queen and a set of twins  have ensuite bathrooms. Suites can be locked off. Screened in patio  accessible by the master bedroom and/or the living room. Both living area and master suites feature panoramic ocean views and floor-to-ceiling windows.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://thetuscanyresort.com/"
),
Recipe(
name: "The Venetian on Grace Bay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/25/9a/37/the-venetian-on-grace.jpg?w=900&h=-1&s=1",
description: "The Venetian offers a serene and luxurious condo for a much desired winter holiday escape. Capturing the elegance of oceanfront living and set on the white sand and glistening turquoise sea of Grace Bay Beach  The Venetian captures the best in Caribbean living. From its architecture to design and finishes  The Venetian offers all of the amenities and beauty desired by those seeking the best in our piece of paradise.",
city: "Grace Bay, Providenciales ",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.thevenetiangracebay.com/"
),
   ]
}
