



import 'package:pak_tourism/model/friend_model.dart';
import 'package:pak_tourism/model/my_trip_model.dart';
import 'package:pak_tourism/model/popular_cities_model.dart';
import 'package:pak_tourism/model/trendingModel.dart';

class TravelRepository{


  static List<PopularCitiesModel> popularCities = [
    PopularCitiesModel(
        caption: "Islamabad is the capital city of Pakistan, and is administered by the Pakistani federal government as part of the Islamabad Capital Territory. It is the ninth-largest city in Pakistan, while the larger Islamabad–Rawalpindi metropolitan area is the country's third-largest with a population of about 4.1 million people."
            "Area: 906.5 km²",
        name: "Islamabad",
        image: "assets/islamabad.jpg",
        population: "1.015 million",
        lat: 33.628094,
        long: 72.943922
    ),
    PopularCitiesModel(
        caption: "Lahore is the capital of the Pakistani province of Punjab and is the country's 2nd largest city after Karachi, as well as the 26th largest city in the world. Lahore is one of Pakistan's wealthiest cities with an estimated GDP of \$84 billion as of 2019."
            "Area: 1,772 km²",
        name: "Lahore",
        image: "assets/lahore.jpg",
        population: "11.13 million",
        lat: 31.513080,
        long: 74.334337
    ),
    PopularCitiesModel(
        caption: "Karachi is the largest city in Pakistan and the twelfth-largest city in the world. It is the capital of the Pakistani province of Sindh. Ranked as a beta-global city, it is Pakistan's premier industrial and financial centre, with an estimated GDP of \$164 billion as of 2019."
            "Area: 3,780 km²",
        name: "Karachi",
        image: "assets/karachi.jpg",
        population: "14.91 million",
        lat: 25.010581,
        long: 67.059107
    ),
    PopularCitiesModel(
        caption: "Peshawar is the capital of the Pakistani province of Khyber Pakhtunkhwa and its largest city. It is the sixth-largest city in Pakistan, and the largest Pashtun-majority city in the country."
            "Area: 215 km²",
        name: "Peshawar",
        image: "assets/peshawar.jpg",
        population: "1.97 million",
        lat: 34.017063,
        long: 71.504346
    ),
    PopularCitiesModel(
        caption: "Quetta, formerly known as Shalkot, is the provincial capital and largest city of the Pakistani province of Balochistan. It is also the 10th largest city in Pakistan. It was largely destroyed in the 1935 Quetta earthquake, but was rebuilt and has a population of 1,001,205 according to the census of 2017."
            "Area: 178 km²",
        name: "Quetta",
        image: "assets/quetta.jpg",
        population: "1.001 million",
        lat: 30.188659,
        long: 66.981597
    ),
    PopularCitiesModel(
        caption: "Multan is a city and capital of Multan Division located in Punjab, Pakistan. Situated on the bank of the Chenab River, Multan is Pakistan's 7th largest city and is the major cultural and economic centre of Southern Punjab. Multan's history stretches deep into antiquity."
            "Area: 286 km²",
        name: "Multan",
        image: "assets/multan.jpg",
        population: "1.872 million",
        lat:30.174652,
        long: 71.491125
    ),
    PopularCitiesModel(
        caption: "Faisalabad, formerly known as Lyallpur named after the founder of the city is the third-most-populous city in Pakistan after Karachi and Lahore respectively, and the second-largest in the eastern province of Punjab."
            "Area: 1,300 km²",
        name: "Faisalabad",
        image: "assets/Faisalabad.jpg",
        population: "3.204 million",
        lat: 31.455131,
        long: 73.090661
    ),
    PopularCitiesModel(
        caption: "Hyderabad is a city and capital of Hyderabad Division in the Sindh province of Pakistan. It is the second-largest city in Sindh, and the eight-largest in Pakistan."
            "Area: 292 km²",
        name: "Hyderabad",
        image: "assets/hyderabad.jpg",
        population: "1.733 million",
        lat: 17.421325,
        long: 78.423093
    ),
    PopularCitiesModel(
        caption: "Rawalpindi, colloquially known as Pindi, is the capital city of Rawalpindi Division located in the Punjab province of Pakistan."
            "Area: 259 km²",
        name: "Rawalpindi",
        image: "assets/rawalpindi.jpg",
        population: "2.098 million",
        lat: 33.562580,
        long: 72.969695
    ),
    PopularCitiesModel(
        caption: "Abbottabad is the capital city of Abbottabad District in the Hazara region of eastern Khyber Pakhtunkhwa, Pakistan. It is the 40th largest city in Pakistan and fourth largest in the province of Khyber Pakhtunkhwa by population."
            "Area: 18,013 km²",
        name: "Abbottabad",
        image: "assets/abbottabad.jpg",
        population: "208,491",
        lat: 34.186706,
        long:73.237653
    ),
    PopularCitiesModel(
        caption: "Rahim Yar Khan is a city in Punjab province of Pakistan. It is the 17th largest city of Pakistan by population. It is the capital of Rahim Yar Khan District and Rahim Yar Khan Tehsil. The administration of the city is subdivided into nine Union Councils."
            "Area: 4,141 km²",
        name: "Rahim Yar Khan",
        image: "assets/rahimYarkhan.jpg",
        population: "420,419",
        lat: 28.419665,
        long: 70.305718
    ),
    PopularCitiesModel(
        caption: "Bahawalpur, is a city located in the Punjab province of Pakistan. Bahawalpur is the 11th largest city in Pakistan by population as per a 2017 census, with a population of 762,111. Founded in 1748, Bahawalpur was the capital of the former princely state of Bahawalpur, ruled by the Abbasi family of Nawabs until 1955."
            "Area: 246 km²",
        name: "Bahawalpur",
        image: "assets/bahawalpur.jpg",
        population: "762,111",
        lat: 29.373930,
        long: 71.662543
    ),
    PopularCitiesModel(
        caption: "Gwadar is a port city on the southwestern coast of Balochistan, Pakistan. The city is located on the shores of the Arabian Sea opposite Oman. Gwadar It is the 100th largest city of Pakistan, according to 2017 census it was an overseas possession of Oman from 1783 to 1958."
            "Area: 12,637 km2",
        name: "Gwader",
        image: "assets/gwader.jpg",
        population: "90,762",
        lat: 25.241009,
        long: 62.269034
    ),
    PopularCitiesModel(
        caption: "Thatta is a city in the Pakistani province of Sindh. Thatta was the medieval capital of Sindh, and served as the seat of power for three successive dynasties. Thatta's historic significance has yielded several monuments in and around the city"
            "Area: 3823 km²",
        name: "Thatta",
        image: "assets/thatta.jpg",
        population: "220,000",
        lat: 24.746470,
        long: 67.908004
    ),
    PopularCitiesModel(
        caption: "Chitral is a town situated on the Chitral River in northern Khyber Pakhtunkhwa, Pakistan. It serves as the capital of the Chitral District and likewise served as the capital of the Chitral princely state that encompassed the region until its direct incorporation into West Pakistan in 1969."
            "Area: 57 km²",
        name: "Chitral",
        image: "assets/chitral.jpg",
        population: "49,794",
        lat: 35.743228,
        long: 71.765972
    ),
    PopularCitiesModel(
        caption: "Gujranwala is a city and capital of Gujranwala Division located in Punjab, Pakistan. It is also known as City of Wrestlers and is quite famous for its food. The city is Pakistan's 5th most-populous metropolitan area, as well as 5th most populous city proper."
            "Area: 240 km²",
        name: "Gujrawala",
        image: "assets/gujrawala.jpg",
        population: "2.027 million",
        lat: 32.169587,
        long: 74.164600
    ),
    PopularCitiesModel(
        caption: "Sialkot is a city in Punjab, Pakistan. It is the capital city of Sialkot District. It is Pakistan's 13th most populous city and is located in north-east Punjab—one of Pakistan's most industrialised regions."
            "Area: 19 km²",
        name: "Sailkot",
        image: "assets/sailkot.jpg",
        population: "655,852",
        lat: 32.516331,
        long: 74.545818
    ),
    PopularCitiesModel(
        caption: "Sukkur is a city in the Pakistani province of Sindh along the western bank of the Indus River, directly across from the historic city of Rohri. Sukkur is the third largest city in Sindh after Karachi and Hyderabad, and 14th largest city of Pakistan by population."
            "Area: 300 km²",
        name: "Sukkur",
        image: "assets/sukkur.jpg",
        population: "499,900",
        lat: 27.723063,
        long: 68.836054
    ),
    PopularCitiesModel(
        caption: "Mansehra is a city and capital of Mansehra District located in Khyber Pakhtunkhwa province, Pakistan. It is the 71st largest city of Pakistan and 7th largest city in the province of Khyber Pakhtunkhwa."
            "Area: 1,340 km²",
        name: "Mansehra",
        image: "assets/mansehra.jpg",
        population: "127,623",
        lat: 34.331430,
        long:73.207854
    ),
    PopularCitiesModel(
        caption: "Attock, formerly known as Campbellpur, is a historical city located in the north of Pakistan's Punjab Province, not far from the country's capital Islamabad. It is the headquarters of the Attock District and is 61st largest city of Pakistan by population."
            "Area: 6,857 km²",
        name: "Attock",
        image: "assets/attock.jpg",
        population: "146,396",
        lat: 33.770668,
        long: 72.357338

    ),
    PopularCitiesModel(
        caption: "Larkana is a city located in the Sindh province of Pakistan. It is called the city of Holy Alams due to the greatest number of Holy Alams as compared to other cities or regions of the world. It is the 15th largest city of Pakistan by population. It is home to the Indus Valley Civilization site Mohenjo-daro."
            "Area: 82 km²",
        name: "Larkana",
        image: "assets/larkana.jpg",
        population: "490,508",
        lat: 27.561632,
        long: 68.200445
    ),
    PopularCitiesModel(
        caption: "Khuzdar, historically known as Qusdar, is the capital city of Khuzdar District in the central part of Balochistan Province, Pakistan. Khuzdar is the third-largest city of Balochistan province and It is the 47th largest city of Pakistan by population according to the 2017 census."
            "Area: 35,380 km²",
        name: "Khuzdar",
        image: "assets/khuzdar.jpg",
        population: "182,927",
        lat: 27.791705,
        long: 66.643937
    ),
    PopularCitiesModel(
        caption: "Shekhupura, also known as Qila Sheikhupura, is a city in the Pakistani province of Punjab. Founded by the Mughal Emperor Jehangir in 1607, Sheikhupura is the 16th largest city of Pakistan by population and is the headquarters of Sheikhupura District."
            "Area: 75 km²",
        name: "Shekhupura",
        image: "assets/shekhupura.jpg",
        population: "473,129",
        lat: 31.708900,
        long:73.984891
    ),
    PopularCitiesModel(
        caption: "Kasur is a city to south of Lahore, in the Pakistani province of Punjab. The city serves as the headquarters of Kasur District. Kasur is the 24th largest city of Pakistan by population. It is also known for being the burial place of the 17th-century Sufi-poet Bulleh Shah"
            "Area: 3,995 km²",
        name: "Kasur",
        image: "assets/kasur.jpg",
        population: "382,000",
        lat: 31.116513,
        long: 74.436269
    ),
    PopularCitiesModel(
        caption: "Dera Ghazi Khan, abbreviated as D. G. Khan, is a city in the Punjab province of Pakistan. It is the 19th largest city of Pakistan by population. It is the headquarters of the Dera Ghazi Khan District and Dera Ghazi Khan Division."
            "Area:  70 km²",
        name: "Dera Ghazi Khan",
        image: "assets/dgKhan.jpg",
        population: "399,064",
        lat: 30.051866,
        long: 70.653643
    ),
    PopularCitiesModel(
        caption: "Chiniot is a city and the administrative headquarter of Chiniot District in the province of Punjab, Pakistan. Located on the bank of the river Chenab, it is the 28th largest city of Pakistan. It is also known for its intricate wooden furniture, architecture, and mosques, and is home to the Omar Hayat Mahal."
            "Area:  2,643 km²",
        name: "Chiniot",
        image: "assets/chiniot.jpg",
        population: "278,747",
        lat: 31.730399,
        long: 72.988261
    ),
    PopularCitiesModel(
        caption: "Kohat, is a city in the Khyber Pakhtunkhwa province of Pakistan which serves as the capital of the Kohat District. The city is regarded as a centre of the Bangash tribe of Pashtuns, who have lived in the region since the late 15th century."
            "Area:  2545 sq. kms",
        name: "Kohat",
        image: "assets/kohat.jpg",
        population: "228,779",
        lat: 33.587742,
        long: 71.436630
    ),
    PopularCitiesModel(
        caption: "Nawabshah is a city and headquarters of the Shaheed Benazirabad District of Sindh province, Pakistan. This city is situated in middle of Sindh province. It is the 27th largest city in Pakistan."
            "Area: 4,239 km²",
        name: "Nawabshah",
        image: "assets/nawabshah.jpg",
        population: "279,688",
        lat: 26.241755,
        long: 68.390680
    ),
    PopularCitiesModel(
        caption: "Chaman is a city and recently claimed as a new district of Balochistan named Chaman District as it was earlier a part of district Qila Abdullah District located on the Afghanistan-Pakistan border. It is the capital of Chaman District, Balochistan, Pakistan"
            "Area: 5,264 km2",
        name: "Chaman",
        image: "assets/chaman.jpg",
        population: "123,191",
        lat: 30.915631,
        long: 66.493194
    ),
    PopularCitiesModel(
        caption: "Ziarat is a city in the Ziarat District situated in the Balochistan. It is 130 kilometres from the capital city of Eastern Balochistan Quetta."
            "Area: 1,489 km²",
        name: "Ziarat",
        image: "assets/Zairat.jpg",
        population: "160,422",
        lat: 30.391701,
        long:67.716338
    ),
  ];
  static List<PopularCitiesModel> beautiful_places =[
    PopularCitiesModel(
        image: "assets/hunzavalley.jpg",
        name: "Hunza Valley",
        caption: "Hunza is a mountainous valley in the northern part of the Gilgit-Baltistan region of Pakistan. It is situated on the bank of Hunza river, bordering Ishkoman to the northwest, Shigar to the southeast, Afghanistan's Wakhan Corridor to the north, and the Xinjiang region of China to the northeast"
            "This fertile valley has agricultural land that has always been a great tourist attraction. It has breathtaking views and is home to warm, hospitable people.",
        hotelRent: "PKR.5000-7500",
        lat: 36.316738,
        long: 74.647430
    ),
    PopularCitiesModel(
        image: "assets/sawatvalley.jpg",
        name: "Sawat Valley",
        caption: "Swat District is a district in the Malakand Division of Khyber Pakhtunkhwa, Pakistan. With a population of 2,309,570 per the 2017 national census, Swat is the 15th-largest district of Khyber Pakhtunkhwa province."
            "During her visit to Pakistan, Queen Elizabeth II labeled Swat as the Switzerland of Pakistan. Swat is located in the Khyber Pakhtunkhwa province of Pakistan. Due to its scenic beauty, pleasant weather, and hospitable people, it is very much a piece of heaven on earth.",
        hotelRent: "PKR.2500-4000",
        lat: 34.916094,
        long: 72.346154
    ),
    PopularCitiesModel(
        image: "assets/naranKaghan.jpg",
        name: "Naran Kaghan",
        caption: "Naran is a town and popular tourist destination in upper Kaghan Valley in Mansehra District of Khyber Pakhtunkhwa province of Pakistan. It is located 119 kilometers from Mansehra city at the altitude of 2,409 meters.It is located about 65 kilometers away from Babusar Top."
            "Naran and Kaghan are incredible tourist locations located in the Khyber Pakhtunkhwa Province. These valleys are the perfect spot for nature lovers. They offer flowing rivers, miles of meadows, snowy mountains, and breathtaking lakes.",
        hotelRent: "PKR.5800-7500",
        lat: 34.907891,
        long: 73.648946
    ),
    PopularCitiesModel(
        image: "assets/shogranvalley.jpg",
        name: "Shogran Valley",
        caption: "Shogran is a hill station situated on a green plateau in the Kaghan Valley, northern Pakistan at a height of 2,362 metres above sea level. It is located in the province of Khyber Pakhtunkhwa. Shogran is located at a distance of 34 kilometres away from Balakot"
            "Shogran is a small hill station in the Kaghan region. It is filled with luxury hotels and motels, and it is the ideal spot for family vacations. Similarly to the Naran Kaghan region, Shogran is filled with tourists in the summer.",
        hotelRent: "3500-15000",
        lat: 34.639827,
        long: 73.460772
    ),
    PopularCitiesModel(
        image: "assets/skarduvalley.jpg",
        name: "Skardu Valley",
        caption: "The Skardu Valley is located in Gilgit-Baltistan, Pakistan. The valley is about 10 km wide and 40 km long. It is at the confluence of the Shigar River and Indus River. It surrounded by the large Karakoram Range. With the nearby lakes and mountains, it is an important tourist location in Pakistan"
            "Skardu is a scenic valley, and the capital of the Baltistan region. It is filled with rugged natural beauty, fresh spring water, blue lakes, and rocky mountains"
            "The valley also plays host to a main urban center that holds significant strategic importance, as Skardu connects Pakistan with China, Afghanistan, and India.",
        hotelRent: "PKR.4500-12000",
        lat: 35.326317,
        long: 75.536549
    ),
    PopularCitiesModel(
        image: "assets/kalash.jpg",
        name: "Chitral Kalash",
        caption: "Chitral is a small cozy town nesting beneath the mighty Hindu Kush mountains. It is inhabited by a tough, warm, and hospitable community. Within a two-hour drive from Chitral, you will reach Kalash, a UNESCO heritage site with a thousand-year-old culture. The Kalasha are approximately five thousand people, who to this day still live as they did many centuries ago.",
        hotelRent: "PKR.4000-11500",
        lat: 35.761060,
        long: 71.768032
    ),
    PopularCitiesModel(
        image: "assets/fairymedows.jpg",
        name: "Fairy Medows",
        caption: "Fairy Meadows, named by German climbers and locally known as Joot, is a grassland near one of the base camp sites of the Nanga Parbat, located in Diamer District, Gilgit-Baltistan, Pakistan."
            "Fairy Meadows is a beautiful little base site for the Nanga Parbat mountain range. It is located in the Diamer district of Gilgit Baltistan. Blessed with matchless beauty, Fairy Meadows is easily one of the most beautiful places in Pakistan. With a hike of almost three hours, you will reach this heavenly place with lush green lakes, and a spectacular view of the snow-covered Nanga Parbat Mountain.",
        hotelRent: "PKR.6000-14000",
        lat: 35.381414,
        long: 74.577040
    ),
    PopularCitiesModel(
        image: "assets/neelumvalley.jpg",
        name: "Neelum Valley",
        caption: "The district of Neelum is the northernmost of 10 districts located within the Pakistani-administered territory of Azad Kashmir. Taking up the larger part of the Neelam Valley, the district has a population of around 191,000 people. It was among the worst-hit areas of Pakistan during the 2005 Kashmir earthquake"
            "Neelum valley is located in Azad Kashmir near the capital Muzaffarabad. Neelum Valley literally translates to Blue Gem valley."
            "It is one of the most beautiful places in Azad Kashmir. It is home to freshwater streams, crystal-clear rivers, and beautiful forests. Like the rest of Pakistan, the people of Kashmir are very hospitable and warm to their guests.",
        hotelRent: "PKR.4000-8000",
        lat: 34.597772,
        long: 73.907854
    ),
    PopularCitiesModel(
        image: "assets/arangkel.jpg",
        name: "Arang Kel",
        caption: "Arang Kel is a village and tourist spot in the Neelam valley of Azad Kashmir, Pakistan. It is located on the hilltop above Kel at an altitude of 8,379 feet"
            "Arang Kel is a small village inside Neelam. It is also called the Pearl of Neelam. This beautiful village is nested at approximately 8000 feet on a hilltop. Arang Kel is a 5-hour ride from Muzaffarabad, and the scenic route is a true wonder to witness.",
        hotelRent: "PKR.4000-7700",
        lat: 34.806192,
        long: 74.345577
    ),
    PopularCitiesModel(
        image: "assets/attabadlake.jpg",
        name: "Attabad Lake",
        caption: "Attabad Lake is a lake located in the Gojal region of Hunza Valley in Gilgit−Baltistan, Pakistan. It was created in January 2010 as the result of a major landslide in Attabad."
            "In 2010, the village of Attabad was buried under a massive landslide. The disaster killed 20 people and destroyed 26 homes. The landslide caused the Hunza river to be dammed in the area. The waters of this natural dam quickly grew to a depth of more than 300 feet and reached over 21 kilometers.",
        hotelRent: "PKR.3500-15000",
        lat: 36.325315,
        long: 74.853677
    ),
    PopularCitiesModel(
        image: "assets/deosaipark.jpg",
        name: "Deosai National Park",
        caption: "The Deosai National Park is a high-altitude alpine plain and National Park located in between Skardu, Astore and Kharmang district in Gilgit Baltistan. Most of the area falls in Skardu district. ",
        hotelRent: "PKR.4500-6000",
        lat: 34.970479,
        long: 75.471716
    ),
    PopularCitiesModel(
        image: "assets/khunjarabpass.jpg",
        name: "Khunjerab Pass",
        caption: "Khunjerab Pass is a 4,693-meter-high mountain pass in the Karakoram Mountains, in a strategic position on the northern border of Pakistan and on the southwest border of China. Mutsjliga Pass is a 5,314-meter-high mountain pass at 36.97374°N 75.2973°E near Khunjerab Pass"
            "The Khunjerab Pass is the highest point on the Karakoram Highway, and the highest border crossing in the world. It connects the Xinjiang province of China with Pakistan. It is home to a spectacular landscape, with snowcapped mountains on both sides; a fertile high-altitude plateau",
        hotelRent: "-",
        lat: 36.850303,
        long: 75.428509
    ),
    PopularCitiesModel(
        image: "assets/kaplu.jpg",
        name: "Kaplu",
        caption: "Khaplu, also spelt Khapalu, is a city that serves as the administrative capital of the Ghanche District of Gilgit-Baltistan, in northern Pakistan. Lying 103 km east of the city of Skardu, it was the second-largest kingdom in old Baltistan of the Yabgo dynasty"
            "Khaplu is a small remote village near Skardu. It has picturesque terraced fields that grow all sorts of crops. It was once a famous and wealthy kingdom for the rulers of Khaplu."
            "Over time the place eroded, and this beautiful village was unknown to the outer world. Recently the Agha Khan took interest in renovating Khaplu and reviving the famous Khaplu Palace to its former glory for tourists and visitors.",
        hotelRent: "PKR. 2000-3000",
        lat: 35.161007,
        long: 76.329047
    ),
    PopularCitiesModel(
        image: "assets/naltervalley.jpg",
        name: "Nalter Valley",
        caption: "Naltar is a valley situated near the city of Gilgit in Gilgit−Baltistan, Pakistan. Naltar is about 34 kilometres from Gilgit. Naltar is a forested region known for its dramatic mountain scenery. Naltar valley is also famous for the three lakes-Strangi Lake, Blue Lake and Bodlok Lake."
            "Naltar Valley can only be enjoyed in the summer months when the lakes are not frozen and the weather is pleasant. To reach this valley, tourists will have to hire a jeep because there is no form of public transport to reach the area. There are numerous hotel cabins and guesthouses to accommodate tourists in the valley.",
        hotelRent: "PKR. 4000-7500",
        lat: 36.166473,
        long: 74.177279
    ),
    PopularCitiesModel(
        image: "assets/saifulmuluk.jpg",
        name: "Saiful Muluk",
        caption: "Saiful Muluk is a mountainous lake located at the northern end of the Kaghan Valley, near the town of Naran in the Saiful Muluk National Park. At an elevation of 3,224 m above sea level, the lake is located above the tree line, and is one of the highest lakes in Pakistan."
            " Kunhar River is created from lake saif-ul-maluk. Saif-ul-Maluk is also famous because of its National Park created in 2003 with full of beauty and nature.",
        hotelRent: "PKR. 6000-13500",
        lat: 34.877174,
        long: 73.692697
    ),
    PopularCitiesModel(
        image: "assets/shandarpass.jpg",
        name: "Shandar Pass",
        caption: "Shandur Pass is a pass located in District Ghizer. It is often called 'Roof of the World'. During the annual 'Shandur Polo Festival,' there are polo matches played in Shandur Polo Ground on Shandur Top, between the teams of Chitral District and Gilgit-Baltistan Province."
            "Shandur pass called Roof of the world because of its hight. Shandur passes also famous because of its big Polo Festivals and these are the highest height polo festivals around the world. On July 7th to 9th polo, festivals are held on Shandur Pass.",
        hotelRent: "PKR.6500",
        lat: 36.073993,
        long: 72.517626
    ),
    PopularCitiesModel(
        image: "assets/lulusar.jpg",
        name: "Lulusar",
        caption: "Lulusar, or Lalusar, is a group of mountain peaks and a lake in the Kaghan Valley in the Khyber-Pakhtunkhwa province of Pakistan"
            "Lulusar famous because its a group of mountain peaks. Its located in Khyber-Pakhtunkhwa and connect Kaghan valley and Manshera. Lulusar distance from Naran is 287km and any vehicle can go to Lulusar without any special guide.",
        hotelRent: "PKR. 7000-14500",
        lat: 34.974927,
        long: 73.151875
    ),
    PopularCitiesModel(
        image: "assets/malamjabba.jpg",
        name: "Malam Jabba",
        caption: "Malam Jabba’s other name is Maalam Jabba and famous by its hill station and ski resorts. Malam Jabba have two biggest ski resorts. The ski resort has all the latest equipment like skiing platforms, chair lifts, and ice clearing machines.",
        hotelRent: "PKR. 2500-7700",
        lat: 34.799863,
        long: 72.571866
    ),
    PopularCitiesModel(
        image: "assets/mahodandlake.jpg",
        name: "Mahodand Lake",
        caption: "Mahodand Lake is a lake located in the upper Usho Valley at a distance of about 35 kilometres from Kalam in Swat District of Khyber Pakhtunkhwa province of Pakistan. The lake is accessible by a four-wheel drive vehicle, and is often utilized for fishing and boating."
            "Mahodand lake is located in Swat, Khyber-Pakhtunkhwa. Mahodand lake is famous because of its clear water, fishing, and boating. Only 4 wheel drive vehicles can go to Mahodand lake because of its roads. Lake looks more beautiful with snow. Mahodand Lake is one of the best places to visit in Pakistan.",
        hotelRent: "PKR. 3000-6500",
        lat: 35.709268,
        long: 72.653308
    ),
    PopularCitiesModel(
        image: "assets/ansoolake.jpg",
        name: "Ansoo Lake",
        caption: "Ansoo Lake, is a tear-shaped lake located in Kaghan Valley in Mansehra District of Khyber Pakhtunkhwa the province of Pakistan. It is located at an elevation of 4,245 metres above sea level and considered one of the highest lakes of the Himalaya Range."
            "Ansoo Lake’s other name is ansu lake because of its shape to the human eye. Word ansu is called human tears. Water is coming down like tears and gathering into a whole like an eye, when you see the lake from a height it looked like eye tear. Ansu lake located in Kaghan. Lake is 4,245m above from sea level.",
        hotelRent: "PKR. 4500-1500",
        lat: 34.814235,
        long: 73.675534
    ),
    PopularCitiesModel(
        image: "assets/bolanpass.jpg",
        name: "Bolan Pass",
        caption: "The Bolān Pass is a mountain pass through the Jhang Kakar range of Balochistan province in western Pakistan, 120 km from the Afghanistan border. The pass is an 89 km stretch of the Bolan river valley from Rindli in the south to Darwāza near Kolpur in the north. It is made up of a number of narrow gorges and stretches.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/hannalake.jpg",
        name: "Hanna Lake",
        caption: "Hanna Lake is a lake in Urak Valley near Quetta city in Balochistan Province, in southwestern Pakistan. It is surrounded by mountains"
            "Hanna Lake is one of the largest tourist places to visit in Quetta that showcases the natural beauty of Balochistan. This is the place where people from all over Pakistan go first when they go to Quetta. This historic lake was formed as a result of the construction of a reservoir during the British colonial period.",
        hotelRent: "3000-5000"
    ),
    PopularCitiesModel(
        image: "assets/",
        name: "Hingol National Park",
        caption: "Hingol National Park is one of the most beautiful places to visit in Balochistan, especially in Balochistan, which showcases incredible natural beauty. Hangol National Park covers thousands of acres, including coastal land and the famous Kund Malir beach. Balochistan is known for its biodiversity. An amazing number of more than 200 species of birds and animals live here.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/hingol.jpg",
        name: "Hingol National Park",
        caption: "The park covers an area of about 6,100 square kilometres (2,400 sq mi) and is located 190 km from Karachi.Hingol National Park is one of the most beautiful places to visit in Balochistan, especially in Balochistan, which showcases incredible natural beauty. Hangol National Park covers thousands of acres, including coastal land and the famous Kund Malir beach. Balochistan is known for its biodiversity. An amazing number of more than 200 species of birds and animals live here.",
        hotelRent: "No hotel Service"
    ),
    PopularCitiesModel(
        image: "assets/hazarganji.jpg",
        name: "Hazarganji Chiltan",
        caption: "Hazarganji-Chiltan National Park is one of the most amazing places to visit in Quetta, which offers beautiful natural beauty with the view of dry mountains. It is located in the Mastung district. It was established in 1980 and covers an area of ​​325,000 acres on the outskirts of Quetta, near Mount Chiltan. The park was set up to house the rare Chiltan ibexes in this area. One of the places to visit in quetta is Hazarganji Chiltan.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/molachotok.jpg",
        name: "Moola Chotok",
        caption: "Moola Chotok is a hidden ravine located in the middle of the Khuzdar District in the southern province of Balochistan, Pakistan. It is situated approximately 105 kilometres north-east of Khuzdar at an elevation of 1,237 metres."
            "Surrounded by long cliffs, the waterfall, called Chotok, is one of the largest waterfalls in all of Moola Tehsil.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/Bumburet.jpg",
        name: "Bumburet",
        caption: "Bumburet is the largest valley of Kalasha Desh in Chitral District, Khyber Pakhtunkhwa the province of Pakistan. The Bumburet valley joins the Rumbur valley at 35°44′20″N 71°43′40″E 1,640 metres, and then joins the Kunar Valley at the village of Ayun ",
        hotelRent: "Camping place"
    ),
    PopularCitiesModel(
        image: "assets/Tirich.jpg",
        name: "Tirich Mir",
        caption: "Tirich Mir is the world’s second-highest mountain after the Himalayas-Karakoram range and it is located in Chitral, KPK. Tirich Mir also called snow-capped the highest mountain. Tirich Mir mountain mostly covered with clouds. People come around the world to go to the mountain peak. One of the places to visit in KPK is Tirich mir.",
        hotelRent: "cCamping place"
    ),
    PopularCitiesModel(
        image: "assets/Miranjani.jpg",
        name: "Miranjani",
        caption: " It is located in the Namli Maira area, in Ayubia National Park, 80 kilometres north of Islamabad in the western Himalayan range"
            "Miranjani is 2,992 meters high mountain in Abbottabad, KPK. This place is ideal for hiking. You can feel clouds near you at the miranjani peak. Miranjani hiking is very long brought some water with you if you are going to Miranjani hiking.",
        hotelRent: "PKR. 3000-15000"
    ),
    PopularCitiesModel(
        image: "assets/Kumrat.jpg",
        name: "Kumrat Valley",
        caption: "Kumrat is a valley in the Upper Dir District of Khyber Pakhtunkhwa the Province of Pakistan. Kumrat Valley is located about 2 hours away from the town of Thal. It is one of the beautiful valleys of Khyber Pakhtunkhwa"
            "Millions of peoples are visiting Kumrat valley in summer. Kumrat specialties are nature, snow, and mountains. Kumrat valley also has pure crystal water from the mountains. One of the places to visit in Kumrat Valley.",
        hotelRent: "PKR. 6500-15000"
    ),
    PopularCitiesModel(
        image: "assets/k2.jpg",
        name: "K2",
        caption: "K2, at 8,611 metres above sea level, is the second-highest mountain on Earth, after Mount Everest. It lies in the Karakoram range, in part in the Gilgit-Baltistan region of Pakistan-administered Kashmir ",
        hotelRent: "Camping Place"
    ),
    PopularCitiesModel(
        image: "assets/naganparbat.jpg",
        name: "Nagan Parbat",
        caption: "Nanga Parbat, known locally as Diamer, is the ninth-highest mountain on Earth, its summit at 8,126 m above sea level",
        hotelRent: "PKR.4000-6500"
    ),
    PopularCitiesModel(
        image: "assets/Lalazar.jpg",
        name: "Lalazar",
        caption: "Lalazar is a natural tourist place and has above 3,123m from sea level. Lalazar located in Upper Kaghan, Khyber Pakhtunkhwa. Lalazar is one of the best places to visit in KPK. Lalazar is a peaceful place you can camp here. Mountain has a great view and peoples also you can check the views of the Agricultural at the top of the mountains.",
        hotelRent: "PKR. 2500-6000"
    ),
    PopularCitiesModel(
        image: "assets/Mallroad.jpg",
        name: "Mall Road",
        caption: "Shahrah-e-Quaid-e-Azam, formerly known as The Mall or Mall Road, is a major road in Lahore, Punjab, Pakistan. The road was laid out during the British Raj on a route leading to the Governor's House, lined on both sides with Mughal shrines and kilns"
            "In winter you can enjoy snowfalls in mall roads streets. Mall road has traditional items, foods, and dry fruits. The special thing about mall road is the hospitality of their peoples are very great.",
        hotelRent: "PKR. 3000-6000"
    ),
    PopularCitiesModel(
        image: "assets/pirchinasi.jpg",
        name: "Pir Chinasi",
        caption: "Pir Chinasi is a shrine and a tourist destination located about 30 kilometers east of Muzaffarabad, the capital city of Azad Kashmir administered by Pakistan. It is located on the top of hills at the height of 2,900 metres",
        hotelRent: "PKR. 3500-10000"
    ),
    PopularCitiesModel(
        image: "assets/darkotpass.jpg",
        name: "Darkot Pass",
        caption: "Darkot pass is a high mountain pass that connects Baroghil Valley in Chitral and Rawat valley of Ghizer District in Gilgit, Pakistan. It is also known as Darkut. The pass is about 10 miles to the east of Koyo Zom, the highest peak in Ghizer District.",
        hotelRent: "Camping place"
    ),
    PopularCitiesModel(
        image: "assets/hindukash.jpg",
        name: "Hindu Kash",
        caption: "The Hindu Kush is an 800-kilometre-long mountain range in Central and South Asia to the west of the Himalayas. It stretches from central and western Afghanistan into northwestern Pakistan and far southeastern Tajikistan.",
        hotelRent: "PKR. 2000-10000"
    ),
    PopularCitiesModel(
        image: "assets/karakoram.jpg",
        name: "Karakoram",
        caption: "The Karakoram is a mountain range spanning the borders of China, India, and Pakistan, with the northwest extremity of the range extending to Afghanistan and Tajikistan; its highest 15 mountains are all based in Pakistan.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/bala.jpg",
        name: "Bala Hisar Fort",
        caption: "Bala Hissar, also spelt Bala Hisar, is a historic fortress located in Peshawar, Khyber Pakhtunkhwa, Pakistan. First mentioned by 7th-century explorer Xuanzang, the fort was used as a royal residence for the Durrani Empire since December 1747, when Ahmad Shah Durrani conquered Peshawar. "
            "Durrani Empire used this fort for living. Pakistan government declared fort as a Tourism point.",
        hotelRent: "PKR. 5500-12000"
    ),
    PopularCitiesModel(
        image: "assets/Mukeshpuri.jpg",
        name: " Mukeshpuri",
        caption: "Mukeshpuri is a 2,800-metre-high mountain in the Nathia Gali Hills, in the Abbottabad District of the Khyber Pakhtunkhwa province in northern Pakistan. It is 90 kilometres north of Islamabad, just above Dunga Gali in the Nathia Gali area of Ayubia National Park"
            "Mountain covers with conifer forest and it’s full of nature. Mukeshpuri mountain attached to Hindus Legends. Snowy mountains make more beautiful Mukeshpuri.",
        hotelRent: "PKR. 2600-20000"
    ),
    PopularCitiesModel(
        image: "assets/AstolaIsland.jpg",
        name: "Astola Island",
        caption: "The Island of Astola, also known as Jazira Haft Talar, is an uninhabited island in the Arabian Sea. The island is a part of Pasni in Gwadar District and the largest island of Pakistan. Really a huge tourist attraction places to visit in Balochistan. Astola is a popular but difficult destination for tourism due to the unavailability of accommodation. Tourists wishing to stay overnight must camp on the island with their luggage.",
        hotelRent: "Camping place"
    ),
    PopularCitiesModel(
        image: "assets/KundMalir.jpg",
        name: "Kund Malir:",
        caption: "Kund Malir' is a beach in Balochistan, Pakistan located in Hingol National Park, about 150 kilometres from Zero-Point on Makran Coastal Highway. It is located 236.8 kilometres west of Karachi, the largest city of Pakistan. The drive between Kund Malir and Ormara is considered to be scenic"
            "Kund Malir Beach is a very exotic beach and definitely one of the special tourist places to visit in Makran. It is considered the most beautiful beach in the world. Many tour services companies now offer their services to explore this beautiful region.",
        hotelRent: "Camping place"
    ),
    PopularCitiesModel(
        image: "assets/SoanSakaser.jpg",
        name: "Soan Sakaser Valley:",
        caption: "Soon Sakaser is a valley situated in northern Punjab, Pakistan. Soon Sakaser is situated at the juncture of Mianwali, Khushab, and Chakwal districts"
            "",
        hotelRent: "Camping Place"
    ),
    PopularCitiesModel(
        image: "assets/ChangaManga.jpg",
        name: "Changa Manga",
        caption: "Changa Manga is about 70 km from Lahore where the attractions include an artificial lake and a small railway that runs through its jungle."
            "It is located about 80 km southwest of Lahore. Spread over 50 acres, it is a popular picnic spot with plenty of opportunities for TDCP resorts, motorboats, children’s parks and outdoor sports.",
        hotelRent: "No hotel service"
    ),
    PopularCitiesModel(
        image: "assets/FaisalMosque.jpg",
        name: "Faisal Mosque",
        caption: "The Faisal Mosque is a mosque located in Islamabad, Pakistan. It is the sixth-largest mosque in the world and the largest within South Asia, located on the foothills of Margalla Hills in Pakistan's capital city of Islamabad"
            "The mosque is dedicated to the memory of the late King Faisal of Saudi Arabia, who bestowed the cost of the project as a gift to the people of Pakistan.",
        hotelRent: "PKR. 2500-8500"
    ),
    PopularCitiesModel(
        image: "assets/SwaikLake.jpg",
        name: "Swaik Lake",
        caption: "Swaik Lake is a magnificent natural waterfall located in Kalar Kahar Tehsil, Chakwal District, Punjab. This can be achieved through the M2 Motorway connecting Lahore and Islamabad. It is one of them the special tourist places to visit in Chakwal and offers swimming and diving opportunities.",
        hotelRent: "Camping place"
    ),
    PopularCitiesModel(
        image: "assets/",
        name: "",
        caption: "",
        hotelRent: ""
    ),
  ];
  //FIXME: replace data
  static List<PopularCitiesModel> historical_places =[
    PopularCitiesModel(
        image: "assets/skarduvalley.jpg",
        name: "Skardu Valley",
        caption: "The Skardu Valley is located in Gilgit-Baltistan, Pakistan. The valley is about 10 km wide and 40 km long. It is at the confluence of the Shigar River and Indus River. It surrounded by the large Karakoram Range. With the nearby lakes and mountains, it is an important tourist location in Pakistan"
            "Skardu is a scenic valley, and the capital of the Baltistan region. It is filled with rugged natural beauty, fresh spring water, blue lakes, and rocky mountains"
            "The valley also plays host to a main urban center that holds significant strategic importance, as Skardu connects Pakistan with China, Afghanistan, and India.",
        hotelRent: "PKR.4500-12000",
        lat: 35.326317,
        long: 75.536549
    ),
    PopularCitiesModel(
        image: "assets/hunzavalley.jpg",
        name: "Hunza Valley",
        caption: "Hunza is a mountainous valley in the northern part of the Gilgit-Baltistan region of Pakistan. It is situated on the bank of Hunza river, bordering Ishkoman to the northwest, Shigar to the southeast, Afghanistan's Wakhan Corridor to the north, and the Xinjiang region of China to the northeast"
            "This fertile valley has agricultural land that has always been a great tourist attraction. It has breathtaking views and is home to warm, hospitable people.",
        hotelRent: "PKR.5000-7500",
        lat: 36.316738,
        long: 74.647430
    ),
    PopularCitiesModel(
        image: "assets/sawatvalley.jpg",
        name: "Sawat Valley",
        caption: "Swat District is a district in the Malakand Division of Khyber Pakhtunkhwa, Pakistan. With a population of 2,309,570 per the 2017 national census, Swat is the 15th-largest district of Khyber Pakhtunkhwa province."
            "During her visit to Pakistan, Queen Elizabeth II labeled Swat as the Switzerland of Pakistan. Swat is located in the Khyber Pakhtunkhwa province of Pakistan. Due to its scenic beauty, pleasant weather, and hospitable people, it is very much a piece of heaven on earth.",
        hotelRent: "PKR.2500-4000",
        lat: 34.916094,
        long: 72.346154
    ),
    PopularCitiesModel(
        image: "assets/naranKaghan.jpg",
        name: "Naran Kaghan",
        caption: "Naran is a town and popular tourist destination in upper Kaghan Valley in Mansehra District of Khyber Pakhtunkhwa province of Pakistan. It is located 119 kilometers from Mansehra city at the altitude of 2,409 meters.It is located about 65 kilometers away from Babusar Top."
            "Naran and Kaghan are incredible tourist locations located in the Khyber Pakhtunkhwa Province. These valleys are the perfect spot for nature lovers. They offer flowing rivers, miles of meadows, snowy mountains, and breathtaking lakes.",
        hotelRent: "PKR.5800-7500",
        lat: 34.907891,
        long: 73.648946
    ),
    PopularCitiesModel(
        image: "assets/shogranvalley.jpg",
        name: "Shogran Valley",
        caption: "Shogran is a hill station situated on a green plateau in the Kaghan Valley, northern Pakistan at a height of 2,362 metres above sea level. It is located in the province of Khyber Pakhtunkhwa. Shogran is located at a distance of 34 kilometres away from Balakot"
            "Shogran is a small hill station in the Kaghan region. It is filled with luxury hotels and motels, and it is the ideal spot for family vacations. Similarly to the Naran Kaghan region, Shogran is filled with tourists in the summer.",
        hotelRent: "3500-15000",
        lat: 34.639827,
        long: 73.460772
    ),

  ];

}