

import 'package:proof_app/screens/activity_name.dart';

class DummyData {
  static List<StdNames> stdname = [
    StdNames(verified: "1", std: "Chlamydia"),
    StdNames(verified: "0", std: "Gonorrhea"),
    StdNames(verified: "0", std: "Syphilis"),
    StdNames(verified: "1", std: "HIV"),
    StdNames(verified: "1", std: "Hepatitis B"),
    StdNames(verified: "1", std: "Hepatitis C"),
    StdNames(verified: "1", std: "Genital Herpes"),
  ];

  static List<NewsFeed> newsfeedposts = [
    // NewsFeed(
    //   userThumbnail: Images.userTempimagePlaceholder,
    //   userName: "Profile Name",
    //   createdTime: "3m ago",
    //   postImage: [
    //     Images.postplaceholder1,
    //     Images.postplaceholder2,
    //   ],
    //   postLike: "3334",
    //   postComments: "200",
    //   desc: Constants.postLoremIpsum,
    // ),
    // NewsFeed(
    //   userThumbnail: Images.userTempimagePlaceholder,
    //   userName: "Profile Name 1",
    //   createdTime: "5m ago",
    //   postImage: [
    //     Images.postplaceholder1,
    //     Images.postplaceholder2,
    //   ],
    //   postLike: "3364",
    //   postComments: "400",
    //   desc: Constants.postLoremIpsum,
    // ),
  ];
}
class StdNames {
  String verified;
  String std;

  StdNames({
    required this.verified,
    required this.std,
  });
}


class DummyData1 {
  static List<FriendNames> friendname = [
    FriendNames(name: "Ms. Arthur Runolfsson", image: 'assets/Avatar.png', tegs: 'Sports , Fashion, Games', status: false),
    FriendNames(name: "Rachel Boehmn", image: 'assets/Man.png', tegs: 'Sports , Fashion, Games', status: false),
    FriendNames(name: "Wilma Glover", image: 'assets/Boy.png', tegs: 'Sports , Fashion, Games', status: false),
    FriendNames(name: "Woodrow O'Kon", image: 'assets/Man.png', tegs: 'Sports , Fashion, Games', status: false),
  ];
}

class FriendNames{
  String name;
  String image;
  String tegs;
  bool status;

  FriendNames({
    required this.name,
    required this.image,
    required this.tegs,
    required this.status,
});
}
//
// class DummyData2 {
//   static List<ActivityNames> activityname = [
//     ActivityNames(name: "Activity Name",),
//     ActivityNames(name: "Activity Name",),
//     ActivityNames(name: "Activity Name",),
//     ActivityNames(name: "Activity Name",),
//     ActivityNames(name: "Activity Name",),
//   ];
// }
// class ActivityNames{
//   String name;
//
//   ActivityNames({
//     required this.name,
//   });
// }


class Choice {
  const Choice({required this.title, });
  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Activity Name', ),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
  const Choice(title: 'Activity Name',),
];






class NewsFeed {
  String userThumbnail;
  String userName;
  String createdTime;
  List<String> postImage;
  String postLike;
  String postComments;
  String desc;

  NewsFeed({
    required this.userThumbnail,
    required this.userName,
    required this.createdTime,
    required this.postImage,
    required this.postLike,
    required this.postComments,
    required this.desc,
  });
}
