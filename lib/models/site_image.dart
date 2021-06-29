import 'package:flutter/foundation.dart';

import '../constants.dart';

class SiteImage {
  final String title;
  final String imageAddress;
  final int galleryIndex;
  final int imageIndexInCurrentGallery;
  final Direction nextImageDirection;

  SiteImage({
    @required this.title,
    @required this.imageAddress,
    @required this.galleryIndex,
    @required this.imageIndexInCurrentGallery,
    this.nextImageDirection,
  });

  static List<SiteImage> getSiteImages() {
    return <SiteImage>[
      SiteImage(
        title: 'Main Entrance Gate',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/1R.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Main Entrance Gate',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/1F.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Main Entrance Front View',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/2F.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Reception View',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/3F.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Balcony',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/4F.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 4,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Saminar Hall',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/5.jpeg',
        galleryIndex: 0,
        imageIndexInCurrentGallery: 5,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Student Main Area',
        imageAddress:
            'assets/images/tuf/1.ground_floor/2.student_affairs/1R.jpeg',
        galleryIndex: 1,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Admission Office',
        imageAddress:
            'assets/images/tuf/1.ground_floor/2.student_affairs/2L.jpeg',
        galleryIndex: 1,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Left,
      ),
      SiteImage(
        title: 'DSA',
        imageAddress:
            'assets/images/tuf/1.ground_floor/2.student_affairs/3L.jpeg',
        galleryIndex: 1,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Left,
      ),
      SiteImage(
        title: 'Conference Table',
        imageAddress:
            'assets/images/tuf/1.ground_floor/3.conference_room/1F.jpeg',
        galleryIndex: 2,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Conference Table Zoom View',
        imageAddress:
            'assets/images/tuf/1.ground_floor/3.conference_room/2R.jpeg',
        galleryIndex: 2,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Library Entrance',
        imageAddress: 'assets/images/tuf/1.ground_floor/4.library/1F.jpeg',
        galleryIndex: 3,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Library Main View',
        imageAddress: 'assets/images/tuf/1.ground_floor/4.library/2R.jpeg',
        galleryIndex: 3,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Library Student Area',
        imageAddress: 'assets/images/tuf/1.ground_floor/4.library/3.jpeg',
        galleryIndex: 3,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Balcony',
        imageAddress:
            'assets/images/tuf/2.basement/1.chemical_engineering/1L.jpeg',
        galleryIndex: 4,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Left,
      ),
      SiteImage(
        title: 'Office',
        imageAddress:
            'assets/images/tuf/2.basement/1.chemical_engineering/2R.jpeg',
        galleryIndex: 4,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Lab View 1',
        imageAddress:
            'assets/images/tuf/2.basement/1.chemical_engineering/3R.jpeg',
        galleryIndex: 4,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Lab View 2',
        imageAddress:
            'assets/images/tuf/2.basement/1.chemical_engineering/4.jpeg',
        galleryIndex: 4,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Balcony',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/1F.jpeg',
        galleryIndex: 5,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Lab View 1',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/2F.jpeg',
        galleryIndex: 5,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Lab View 2',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/3F.jpeg',
        galleryIndex: 5,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Reception',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/4F.jpeg',
        galleryIndex: 5,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Lab View 3',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/5F.jpeg',
        galleryIndex: 5,
        imageIndexInCurrentGallery: 4,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Balcony',
        imageAddress:
            'assets/images/tuf/3.first_floor/computer_science/1F.jpeg',
        galleryIndex: 6,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Staff Room',
        imageAddress:
            'assets/images/tuf/3.first_floor/computer_science/2F.jpeg',
        galleryIndex: 6,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'OS Lab',
        imageAddress:
            'assets/images/tuf/3.first_floor/computer_science/3F.jpeg',
        galleryIndex: 6,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Programming Lab',
        imageAddress:
            'assets/images/tuf/3.first_floor/computer_science/4R.jpeg',
        galleryIndex: 6,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Balcony',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/1F.jpeg',
        galleryIndex: 7,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Lab View 1',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/2L.jpeg',
        galleryIndex: 7,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Left,
      ),
      SiteImage(
        title: 'Lab View 2',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/2R.jpeg',
        galleryIndex: 7,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Lab View 3',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/3F.jpeg',
        galleryIndex: 7,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Lab View 4',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/4.jpeg',
        galleryIndex: 7,
        imageIndexInCurrentGallery: 4,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Entrance',
        imageAddress:
            'assets/images/tuf/4.second_floor/makhtar_auditorium/1F.jpeg',
        galleryIndex: 8,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Title Sheet',
        imageAddress:
            'assets/images/tuf/4.second_floor/makhtar_auditorium/2F.jpeg',
        galleryIndex: 8,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Main View',
        imageAddress:
            'assets/images/tuf/4.second_floor/makhtar_auditorium/3F.jpeg',
        galleryIndex: 8,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Stage View',
        imageAddress:
            'assets/images/tuf/4.second_floor/makhtar_auditorium/4.jpeg',
        galleryIndex: 8,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Ground Entrance',
        imageAddress: 'assets/images/tuf/ground/1R.jpeg',
        galleryIndex: 9,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Uni Back View',
        imageAddress: 'assets/images/tuf/ground/2L.jpeg',
        galleryIndex: 9,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Left,
      ),
      SiteImage(
        title: 'Ground Main View',
        imageAddress: 'assets/images/tuf/ground/3R.jpeg',
        galleryIndex: 9,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Right,
      ),
      SiteImage(
        title: 'Uni Back View',
        imageAddress: 'assets/images/tuf/ground/4.jpeg',
        galleryIndex: 9,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Dumbbells',
        imageAddress: 'assets/images/tuf/gym/1F.jpeg',
        galleryIndex: 10,
        imageIndexInCurrentGallery: 0,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Running Machines',
        imageAddress: 'assets/images/tuf/gym/2F.jpeg',
        galleryIndex: 10,
        imageIndexInCurrentGallery: 1,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Running Machines 2',
        imageAddress: 'assets/images/tuf/gym/3F.jpeg',
        galleryIndex: 10,
        imageIndexInCurrentGallery: 2,
        nextImageDirection: Direction.Forward,
      ),
      SiteImage(
        title: 'Push-ups Machines',
        imageAddress: 'assets/images/tuf/gym/4.jpeg',
        galleryIndex: 10,
        imageIndexInCurrentGallery: 3,
        nextImageDirection: Direction.Forward,
      ),
    ];
  }
}
