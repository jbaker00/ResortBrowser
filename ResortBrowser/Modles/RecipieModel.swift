//
//  RecipieModel.swift
//  ResortBrowser
//
//  Created by James Baker on 9/3/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case allInclusive = "All Inclusive"
    case resort = "Not All Inclusive Resort"
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
            name: "Hotel Riu Palace Aruba",
            image: "https://thetravelplannerscouple.com/wp-content/uploads/2021/04/aruba-palace-768x445.jpg",
            description: "The 24-hour All Inclusive Hotel Riu Palace Aruba opens all year round and is located directly on the beautiful Palm Beach. RIU Palace is the most elegant category in the RIU hotel chain, with hotels that meet the highest standards in terms of luxury, excellence and sophistication, creating a unique experience. The location is ideal due to its proximity to Aruba Airport (10 km) and Oranjestad (11 km) and invites you to explore the area. The hotel has 450 cozily furnished rooms with free Wi-Fi and offers many amenities. Relax in our spa, or get in shape at the fitness center. 2 outdoor pools, 1 children's pool. Day and evening entertainment, as well as our discotheque in the neighboring Hotel Riu Palace Antillas. For lovers of gastronomy, we offer live cooking stations at our main buffet restaurant, Japanese and Italian, Fusion restaurants and Steakhouse, as well as 5 bars and our Capuchino patisserie & ice cream parlor.",
            city: "Eagle Beach",
            country: "Aruba",
            category: "All Inclusive",
            airport: "AUA",
            url: "https://www.riu.com/en/hotel/aruba/palmbeach/hotel-riu-palace-aruba/"
        ),
        Recipe(
            name: "Wyndham Alltra Cancun",
            image: "https://www.viewdreamvacationweek.com/images/_resd/jpglg/ii_gnc1.jpg",
            description: "In the center of Cancun’s epic Hotel Zone, Wyndham Alltra Cancun is a dreamy beachfront escape packed with unlimited fun and wonder all included for guests of all ages. Couples, families and friends will instantly be transported to tropical paradise thanks to glistening swimming pools, a private beachfront and exciting activities ranging from oceanfront yoga to live entertainment.",
            city: "Cancun",
            country: "Mexico",
            category: "All Inclusive",
            airport: "CUN",
            url: "https://www.wyndhamhotels.com/wyndham-alltra/cancun-mexico/wyndham-alltra-cancun-all-inclusive-resort/overview?cid=PS:ofpomiip848f71q"
        ),
        Recipe(
            name: "Breathless Montego Bay Resort & Spa",
            image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/4b/ba/53/exhale-club-ocean-view.jpg?w=2400&h=-1&s=1",
            description: "Luxe and ultra-modern, Breathless Montego Bay Resort & Spa has been reimagined for sophisticated singles, couples and friends who want to live big, breath deep and experience life at its fullest. Located minutes away from the heart of downtown Montego Bay, the highly anticipated and stylish resort will offer guests a unique experience focused on exhilarating parties, weekly and monthly themed events and around the clock entertainment designed to entice and arouse your senses. The stunning 5-story adults-only resort will boast 150 ultra-chic and lavish suites with state-of-the-art technology, all carefully designed to exceed expectations with furnished private balconies and terraces, stunning mountain and bay views, floor-to-ceiling glass doors, gorgeous marble bathrooms and more. A social atmosphere is infused into all aspects and areas of the resort, encouraging guests to mix and mingle while enjoying all of the benefits of an Unlimited-Luxury® experience, where everything is included. Limitless access to seven specialty-themed restaurants featuring communal tables and unique culinary experiences, five trendsetting bars and lounges serving top-shelf spirits and handcrafted cocktails, 24-hour room and concierge services, endless daytime activities and live nightly entertainment; all without limits, reservations required or expected gratuities",
            city: "Montego Bay",
            country: "Jamica",
            category: "All Inclusive",
            airport: "MJB",
            url: "https://www.hyatt.com/en-US/hotel/jamaica/breathless-montego-bay/bremb"
        ),
        Recipe(
            name: "Grand Velas Riviera Nayarit",
            image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/f8/98/a0/beautiful-days.jpg?w=1200&h=-1&s=1",
            description: "Grand Velas Riviera Nayarit is the first Five Diamond resort along the Pacific Coast of Mexico. Having revolutionized the All-Inclusive concept, it offers exquisite gastronomy at 6 restaurants, a bar, and an Aqua Bar; 267 luxury suites overlooking the infinite pool and the Banderas bay waters; and personalized service. Every season, fun activities can be enjoyed at the resort, with a selection of moments for families, adults-only, and couples. The little ones enjoy the modern Kids’ Club and Teens’ Club. Our Luxury All-Inclusive concept: Personal Concierge • 24-hour suite service • Private terrace with sitting area • Indoor jacuzzi • Daily-stocked in-suite minibar • Welcome bottle of mezcal • Nespresso coffee maker • Pillow menu",
            city: "Nayarit",
            country: "Mexico",
            category: "All Inclusive",
            airport: "PVR",
            url: "https://vallarta.grandvelas.com/"
        ),
        Recipe(
            name: "Conrad Punta Mita",
            image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/62/b1/98/exterior.jpg?w=1100&h=-1&s=1",
            description: "Conrad Punta de Mita is part of the Litibu gated community, situated along the tranquil Riviera Nayarit. Enjoy serene guest rooms with private balconies featuring stunning Pacific Ocean views, seven diverse dining and bar options with 24-hour room service, our on-site spa, three outdoor pools, 54,000 sq ft of event space, and more.",
            city: "Nayarit",
            country: "Mexico",
            category: "Not All Inclusive Resort",
            airport: "PVR",
            url: "https://www.conradpuntademita.com/"
        ),
        Recipe(
            name: "Secrets Cap Cana Resort & Spa",
            image: "https://www.capcanaresortspa.com/images/gallery/gallery-1.jpg",
            description: "Opening November 15, 2016 - Perfectly situated in the exclusive gated community of Cap Cana, Secrets Cap Cana Resort & Spa will bring the highest level of luxury to the crystal blue waters and magnificent sugar-sand Juanillo Beach, one of the most beautiful beaches in the Dominican Republic. Luxe and superior, Secrets Cap Cana is the epitome of luxury with 457 suites adorned with sophisticated Caribbean furnishings, gourmet dining, top-shelf spirits, 24-hour room service, daily refreshed mini-bar and close proximity to the unique pleasures of Cap Cana - a protected harbor marina, a renowned fishery, thrilling excursions, and Punta Espada golf course, designed by golf legend Jack Nicklaus. Experience Unlimited-Luxury(R), where everything is included, in a setting of unparalleled magnificence, just 20 minutes from the Punta Cana International Airport. Spacious suites will be adorned with striking décor, marble bathrooms and furnished balcony or terrace with stunning views of the ocean or lush landscape. A world-class spa offering a bevy of treatments, an expansive infinity pool, daily activities and nightly entertainment, the opportunity to spend a night out at a neighboring resort with the Sip, Savor & See Dining Experience, and so much more allows guests to customize and enjoy their stay their way. Escape into luxury at Secrets Cap Cana and experience all of the pampering you deserve in the most superb surroundings in the Dominican Republic.",
            city: "Punta Cana",
            country: "Dominican Republic",
            category: "All Inclusive",
            airport: "PUJ",
            url: "https://www.capcanaresortspa.com/"
        ),
        Recipe(
            name: "Planet Hollywood",
            image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/4c/4f/83/main-pool.jpg?w=1200&h=-1&s=1",
            description: "Vacation like a Star ™ at the new Planet Hollywood Beach Resort Costa Rica. Guests of all ages can get close to authentic Hollywood memorabilia and enjoy themed experiences in this natural and breathtaking beachfront setting on the famed Pacific coast of Costa Rica. Guests can choose from a variety of all-inclusive dining venues and bars or indulge in extra services at the PH Spa & Beauty Bar. • Sleep Famously™ atop our PHabulous Beds™, a handcrafted custom mattress with bedding developed • Plugged In™ Unlimited high speed Wi-Fi resort-wide, for all your devices • Main Event Guarantee™ Never miss big entertainment moments! • Your Soundtrack™ Pick your music theme during your stay in paradise • Crave - Global culinary experiences • PUMPED Fitness Center - First-class work out with professional instructors, daily classes, and the latest cardio and strength training equipment",
            city: "Liberia",
            country: "Costa Rica",
            category: "All Inclusive",
            airport: "LIB",
            url: "https://www.marriott.com/en-us/hotels/lirph-planet-hollywood-costa-rica-an-autograph-collection-all-inclusive-resort/overview/"
        ),
        Recipe(
            name: "The Shore Club Turks and Caicos",
            image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/07/cd/39/balcony-views.jpg?w=1200&h=-1&s=1",
            description: "The Shore Club Turks & Caicos features include 4 swimming pools, 5 restaurants / bars, wellness centre including spa and fitness center, complimentary kids club, tennis courts, water sports, rental yacht and so much more! Long Bay Beach—the most private stretch of Providenciales, the most sought after location of the Turks and Caicos Islands—offers the best of both worlds, a stunning, secluded beach just minutes away from Provo’s town center. The resort has been named Most Instagrammable Hotel in the World in both 2021 and 2022.",
            city: "Providenciales",
            country: "Turks and Caicos",
            category: "Not All Inclusive Resort",
            airport: "PLS",
            url: "https://www.theshoreclubtc.com/"
        )
    ]
}
