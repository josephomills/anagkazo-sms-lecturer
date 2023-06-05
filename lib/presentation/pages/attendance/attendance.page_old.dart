// import 'package:auto_route/auto_route.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterfire_ui/auth.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:lecturer/domain/attendance/lecture_type.enum.dart';
// import 'package:lecturer/domain/attendance/scan_type.enum.dart';
// import 'package:lecturer/presentation/navigation/autoroute.gr.dart';
// import 'package:lecturer/presentation/widgets/avatar.widget.dart';
// import 'package:lecturer/presentation/widgets/pagetitle.widget.dart';
// import 'package:lecturer/presentation/widgets/scan.widget.dart';

// @RoutePage()
// class AttendancePage extends StatefulWidget {
//   const AttendancePage({Key? key}) : super(key: key);

//   @override
//   State<AttendancePage> createState() => _AttendancePageState();
// }

// class _AttendancePageState extends State<AttendancePage> {
//   late ScrollController ctrl;
//   late bool addTitleToAppBar;
//   String title = "Attendance";
//   final db = FirebaseFirestore.instance;
//   String id = "";

//   @override
//   void initState() {
//     ctrl = ScrollController();
//     addTitleToAppBar = false;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => Future.value(false),
//       child: AuthStateListener(
//         listener: (oldState, state, controller) {
//           if (state is SignedIn) {
//             setState(() {
//               id = state.user!.uid;
//             });
//           }

//           if (oldState is SignedIn) {
//             setState(() {
//               id = oldState.user!.uid;
//             });
//           }
//           return null;
//         },
//         child: Scaffold(
//           appBar: AppBar(
//             automaticallyImplyLeading: false,
//             title: Text(
//               addTitleToAppBar ? title : "",
//               style: const TextStyle(color: Colors.black87, fontSize: 28),
//             ),
//             elevation: 0,
//             backgroundColor:
//                 addTitleToAppBar ? Colors.white : Colors.transparent,
//             actions: const [
//               AvatarWidget(
//                 url:
//                     "https://images.pexels.com/photos/3145570/pexels-photo-3145570.jpeg",

//                 // url: FirebaseAuth.instance.currentUser!.photoURL ?? "",
//               ),
//             ],
//           ),
//           body: NotificationListener<ScrollNotification>(
//             onNotification: (notification) {
//               if (notification.metrics.pixels > 30) {
//                 setState(() {
//                   addTitleToAppBar = true;
//                 });
//               } else {
//                 setState(() {
//                   addTitleToAppBar = false;
//                 });
//               }

//               return true;
//             },
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 // controller: ctrl,
//                 // shrinkWrap: true,
//                 children: <Widget>[
//                   PageTitleWidget(title: title),
//                   StreamBuilder<QuerySnapshot>(
//                     stream: db
//                         .collection(
//                             "ta/${FirebaseAuth.instance.currentUser!.uid}/attendance")
//                         .snapshots(),
//                     builder: (context, snapshot) {
//                       if (!snapshot.hasData) {
//                         return const Center(
//                           child: CircularProgressIndicator(),
//                         );
//                       }

//                       final docs = snapshot.data!.docs;
//                       docs.sort((a, b) {
//                         final aa = a.get("dateTime").toDate();
//                         final bb = b.get("dateTime").toDate();
//                         return bb.compareTo(aa);
//                       });

//                       return ListView.builder(
//                         controller: ctrl,
//                         physics: const ClampingScrollPhysics(),
//                         shrinkWrap: true,
//                         itemCount: snapshot.data!.size,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 4),
//                             child: ScanWidget(
//                               dateTime: DateTime.parse(docs[index]
//                                   .get("dateTime")
//                                   .toDate()
//                                   .toString()),
//                               classOf: docs[index].get("classOf"),
//                               lectureType:
//                                   (docs[index].get("lecture") as String)
//                                       .lectureType,
//                               scanType:
//                                   (docs[index].get("type") as String).scanType,
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: (() async {
//               // Check camera permission before opening scan page
//               var status = await Permission.camera.status;
//               if (status.isDenied) {
//                 await Permission.camera.request();
//               }

//               if (status.isGranted) {
//                 AutoRouter.of(context).push(const ScanRoute());
//               }
//             }),
//             tooltip: 'Scan QR Code',
//             child: const Icon(
//               Icons.qr_code_scanner,
//               size: 28,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
