import Foundation
enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case beach = "Beach"
    case mountains = "Mountains"
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
description: "None",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/stay/shore-house/"
),
Recipe(
name: "Beach Village at The Del",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/46/ba/1a/beach-village-at-the.jpg?w=2000&h=-1&s=1",
description: "None",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/stay/beach-village/"
),
Recipe(
name: "Hotel Del Coronado",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5a/eb/6f/hotel-del-coronado.jpg?w=700&h=-1&s=1",
description: "None",
city: "Coronado, California",
country: "USA",
category: "Beach",
airport: "SAN",
url: "https://hoteldel.com/"
),
Recipe(
name: "Conrad Punta Mita",
image: "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/279689605.jpg?k=1a3d6244daa51e117557266d4a28c4836c21cdaefbdefd81eab27cb747e555b3&o=&hp=1",
description: "None",
city: "Punta Mita, Nayarit",
country: "Mexico",
category: "Beach",
airport: "PVR",
url: "https://www.conradpuntademita.com/"
),
Recipe(
name: "Planet Hollywood Costa Rica",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/4c/4f/83/main-pool.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Costa Mujeres, Q.R",
country: "Costa Rica",
category: "Beach",
airport: "LIB",
url: "https://www.planethollywoodhotels.com/resorts/costa-rica"
),
Recipe(
name: "Hilton Hawaiian Village Waikiki Beach Resort",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/cf/78/ba/hilton-hawaiian-village.jpg?w=2000&h=-1&s=1",
description: "None",
city: "Honolulu, Hawaii",
country: "USA",
category: "Beach",
airport: "HNL",
url: "https://www.hiltonhawaiianvillage.com/"
),
Recipe(
name: "Ambergris Cay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/14/bb/4c/villas-on-columbus-beach.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Ambergris Cay, None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.ambergriscay.com/"
),
Recipe(
name: "Seven Stars Resort & Spa",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/c7/22/f7/seven-stars-resort-spa.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.sevenstarsgracebay.com/"
),
Recipe(
name: "Grace Bay Club",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/0d/7a/22/one-bedroom-hotel-luxury-suite--v.jpg?w=2400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://gracebayclub.gracebayresorts.com/"
),
Recipe(
name: "The Shore Club",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/07/cd/39/balcony-views.jpg?w=1200&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.theshoreclubtc.com/"
),
Recipe(
name: "The Ritz",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/99/ef/cf/the-ritz-carlton-turks.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.ritzcarlton.com/en/hotels/caribbean/turks-and-caicos"
),
Recipe(
name: "Windsong",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/e8/4d/f3/windsong-resort.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.windsongresort.com/"
),
Recipe(
name: "The Palms",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/8a/dd/08/pool.jpg?w=800&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.thepalmstc.com/"
),
Recipe(
name: "Wymara Resort and Villas",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/99/1b/30/gansevoort-turks-caicos.jpg?w=2000&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://wymararesortandvillas.com/"
),
Recipe(
name: "COMO Parrot Cay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/3e/7f/02/aerial-cbc-and-pools.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.comohotels.com/turks-and-caicos/como-parrot-cay"
),
Recipe(
name: "Amanyara",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/2b/73/1d/amanyara-turks-caicos.jpg?w=1100&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.aman.com/resorts/amanyara"
),
Recipe(
name: "Point Grace",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/f6/56/7d/1-bedroom-suite.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://pointgrace.gracebayresorts.com/"
),
Recipe(
name: "Beaches Turks & Caicos",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ba/40/0f/beaches-turks-caicos.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.beaches.com/resorts"
),
Recipe(
name: "Villa Renaissance",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/d7/ab/47/villa-renaissance.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://tcvillas.com/"
),
Recipe(
name: "The Tuscany on Grace Bay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/49/61/14/pool-and-reception.jpg?w=1400&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://thetuscanyresort.com/"
),
Recipe(
name: "The Venetian on Grace Bay",
image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/25/9a/37/the-venetian-on-grace.jpg?w=900&h=-1&s=1",
description: "None",
city: "Providenciales , None",
country: "Turks and Caicos",
category: "Beach",
airport: "PUJ",
url: "https://www.thevenetiangracebay.com/"
),
   ]
}
