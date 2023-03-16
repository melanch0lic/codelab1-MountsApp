import 'package:flutter/material.dart';

import '../pages/details_page.dart';

import '../models/mount.dart';

class AppMountListView extends StatelessWidget {
  const AppMountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MountModel> mountItems = [
      MountModel(
          path: 'https://i.pinimg.com/564x/d7/88/29/d788291f6614138879f04fc5916b8e72.jpg',
          name: 'Mount Semeru',
          description:
              'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
          location: 'East Java'),
      MountModel(
          path: 'https://i.pinimg.com/564x/48/df/78/48df785b7d0fb2b2bed7022e9353ee3d.jpg',
          name: 'Mount Merbaru',
          description:
              'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
          location: 'Central Java'),
      MountModel(
          path: 'https://i.pinimg.com/564x/fe/b2/76/feb276ab5463526941a26e9bcb74e83c.jpg',
          name: 'Mauna Loa',
          description:
              'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
          location: 'Hawaii'),
      MountModel(
          path: 'https://i.pinimg.com/564x/05/0f/90/050f9097d269cdd881582dbde4364a46.jpg',
          name: 'Mount Vesuvius',
          description:
              'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
          location: 'Italy'),
      MountModel(
          path: 'https://i.pinimg.com/564x/ea/29/2e/ea292e720edd8d89aaca5241316b0cb3.jpg',
          name: 'Mount Popocatépetl',
          description:
              'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
          location: 'Mexico')
    ];
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mountItems.length,
          itemBuilder: (context, index) {
            MountModel currentMount = mountItems[index];

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(currentMount)));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(mountItems[index].path),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mountItems[index].name,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(mountItems[index].location, style: const TextStyle(color: Colors.white))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
