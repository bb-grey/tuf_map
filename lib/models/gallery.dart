import 'package:flutter/foundation.dart';

class Gallery {
  String title;
  String imageAddress;

  Gallery({@required this.title, @required this.imageAddress});

  static List<Gallery> getGalleries() {
    return <Gallery>[
      Gallery(
        title: 'Entrance',
        imageAddress: 'assets/images/tuf/1.ground_floor/1.entrance/1F.jpeg',
      ),
      Gallery(
        title: 'Student Affairs',
        imageAddress:
            'assets/images/tuf/1.ground_floor/2.student_affairs/1R.jpeg',
      ),
      Gallery(
        title: 'Conference Room',
        imageAddress:
            'assets/images/tuf/1.ground_floor/3.conference_room/1F.jpeg',
      ),
      Gallery(
        title: 'Library',
        imageAddress: 'assets/images/tuf/1.ground_floor/4.library/1F.jpeg',
      ),
      Gallery(
        title: 'Chemical Engineering',
        imageAddress:
            'assets/images/tuf/2.basement/1.chemical_engineering/1L.jpeg',
      ),
      Gallery(
        title: 'Civil Engineering',
        imageAddress:
            'assets/images/tuf/3.first_floor/civil_engineering/1F.jpeg',
      ),
      Gallery(
        title: 'Computer Science',
        imageAddress:
            'assets/images/tuf/3.first_floor/computer_science/1F.jpeg',
      ),
      Gallery(
        title: 'Electrical Department',
        imageAddress: 'assets/images/tuf/4.second_floor/electrical/1F.jpeg',
      ),
      Gallery(
        title: 'Makhtar Auditorium',
        imageAddress:
            'assets/images/tuf/4.second_floor/makhtar_auditorium/1F.jpeg',
      ),
      Gallery(
        title: 'Ground',
        imageAddress: 'assets/images/tuf/ground/1R.jpeg',
      ),
      Gallery(
        title: 'Gym',
        imageAddress: 'assets/images/tuf/gym/1F.jpeg',
      ),
    ];
  }
}
