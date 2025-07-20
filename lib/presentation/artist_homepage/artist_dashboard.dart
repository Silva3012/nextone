import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';

@RoutePage()
class ArtistDashboardPage extends HookWidget {
  const ArtistDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: NextOneColors.surface,
        ),
        body: Stack(
          children: [
            Container(
              height: 50,
              color: NextOneColors.surface,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: paddingAll16,
                    child: Row(
                      children: [
                        height120,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            height64,
                            Text(
                              'Artist Name Here',
                              style: NextOneTextStyles.headline,
                            ),
                            height8,
                            Text(
                              'Total Earnings: Amount in Rands',
                              style: NextOneTextStyles.bodyText1,
                            ),
                            height8,
                            Text(
                              'Supporter count here',
                              style: NextOneTextStyles.bodyTextSecondary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: NextoneButton(
                      text: 'Upload',
                      type: NextoneButtonType.primary,
                      onPressed: () {},
                    ),
                  ),
                  height16,
                  Expanded(
                      child: Column(
                    children: [
                      TabBar(
                        controller: tabController,
                        indicatorColor: Colors.red,
                        labelColor: Colors.red,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(text: 'Tracks'),
                          Tab(text: 'Earnings'),
                          Tab(text: 'SRM'),
                        ],
                      ),
                      Expanded(
                          child: TabBarView(
                              controller: tabController,
                              children: const [
                            Center(
                                child: Text('Tracks View',
                                    style: TextStyle(color: Colors.white))),
                            Center(
                                child: Text('Earnings View',
                                    style: TextStyle(color: Colors.white))),
                            Center(
                                child: Text('SRM View',
                                    style: TextStyle(color: Colors.white))),
                          ]))
                    ],
                  )),
                ],
              ),
            ),
            const Positioned(
              left: 10,
              child: CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 90, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class _TracksTab extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 16.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.grey[400],
//               ),
//               const SizedBox(width: 16),
//               const Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Track Title',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold)),
//                     SizedBox(height: 4),
//                     Text('Artist Name',
//                         style: TextStyle(color: Colors.white70, fontSize: 14)),
//                     SizedBox(height: 8),
//                     Row(
//                       children: [
//                         Icon(Icons.play_arrow, size: 16, color: Colors.grey),
//                         SizedBox(width: 4),
//                         Text('(number of plays)',
//                             style: TextStyle(color: Colors.grey, fontSize: 12)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
