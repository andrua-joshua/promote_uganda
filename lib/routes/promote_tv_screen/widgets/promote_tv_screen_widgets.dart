import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class promoteTvChipsWidget extends StatelessWidget {
  const promoteTvChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          drilloxChipsWidget(isActive: true, label: "New"),
          drilloxChipsWidget(isActive: false, label: "Trending"),
          drilloxChipsWidget(isActive: false, label: "Explorer"),
          drilloxChipsWidget(isActive: false, label: "invest"),
          drilloxChipsWidget(isActive: false, label: "Travel")
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class drilloxChipsWidget extends StatelessWidget {
  final bool isActive;
  final String label;
  const drilloxChipsWidget(
      {super.key, required this.isActive, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isActive ? Colors.red : null),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    ));
  }
}

//ignore:camel_case_types
class adsWidget extends StatelessWidget {
  final String imgUrl;
  final String briefInfo;
  final String rating;
  const adsWidget(
      {super.key,
      required this.briefInfo,
      required this.imgUrl,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints.expand(height: 200),
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgUrl))
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          child: Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: Text(
                briefInfo,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ))
            ],
          ),
        ),
        (SizedBox(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Ads"),
                  const Expanded(child: SizedBox()),
                  Text(rating),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("FREE"),
                ],
              )),
        ))
      ],
    );
  }
}

///----for the holders

//ignore:camel_case_types
class holdersWidget extends StatelessWidget {
  const holdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//ignore:camel_case_types
class videoWidget extends StatefulWidget {
  final String videoUrl;
  const videoWidget({super.key, required this.videoUrl});

  @override
  _videoWidgetState createState() => _videoWidgetState();
}

//ignore:camel_case_types
class _videoWidgetState extends State<videoWidget> {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController customVideoPlayerController;

  @override
  void initState() {
    super.initState();

    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: videoPlayerController);
  }

  @override
  void dispose() {
    customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: videoPlayerController.initialize(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomVideoPlayer(
              customVideoPlayerController: customVideoPlayerController);
        }
        if (snapshot.hasError) {
          return Container( 
            constraints: BoxConstraints.expand(),
            color: Colors.black,
            child:Center(
            child: Text("error: " + snapshot.error.toString()),
          ));
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

//ignore:camel_case_types
class bottomWidget extends StatelessWidget {
  final String imgUrl;
  final String videoTitle;
  final String date;
  final String views;

  const bottomWidget(
      {super.key,
      required this.videoTitle,
      required this.imgUrl,
      required this.views,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5,),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imgUrl),
        ),
        const SizedBox(width: 10,),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              videoTitle,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text("Promote TV | $views views | $date day Ago")
          ],
        ))
      ],
    );
  }
}

//ignore:camel_case_types
class fullVideoComponentWidget extends StatelessWidget {
  final String videoUrl;
  const fullVideoComponentWidget({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200, child: videoWidget(videoUrl: videoUrl)),
        const SizedBox(
          height: 10,
        ),
        const bottomWidget(
            videoTitle: "videoTitle",
            imgUrl: "assets/images/city.jpg",
            views: "11k",
            date: "2")
      ],
    );
  }
}
