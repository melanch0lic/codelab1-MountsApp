import 'package:flutter/material.dart';

import '../pages/details_page.dart';

import '../models/mount.dart';

class AppMountListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<MountModel> mountItems = [
      MountModel(
          path:
              'https://images.pexels.com/photos/9348011/pexels-photo-9348011.jpeg?cs=srgb&dl=pexels-guntur-kresno-9348011.jpg&fm=jpg',
          name: 'Mount Semeru',
          description:
              'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
          location: 'East Java'),
      MountModel(
          path:
              'https://images.pexels.com/photos/6898445/pexels-photo-6898445.jpeg?cs=srgb&dl=pexels-marek-piwnicki-6898445.jpg&fm=jpg',
          name: 'Mount Merbaru',
          description:
              'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
          location: 'Central Java'),
      MountModel(
          path:
              'https://images.pexels.com/photos/9962773/pexels-photo-9962773.jpeg?cs=srgb&dl=pexels-plato-terentev-9962773.jpg&fm=jpg',
          name: 'Mauna Loa',
          description:
              'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
          location: 'Hawaii'),
      MountModel(
          path:
              'https://images.pexels.com/photos/7463099/pexels-photo-7463099.jpeg?cs=srgb&dl=pexels-da-7463099.jpg&fm=jpg',
          name: 'Mount Vesuvius',
          description:
              'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
          location: 'Italy'),
      MountModel(
          path:
              'https://images.pexels.com/photos/1573471/pexels-photo-1573471.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsPage(currentMount)));
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
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(mountItems[index].location,
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
