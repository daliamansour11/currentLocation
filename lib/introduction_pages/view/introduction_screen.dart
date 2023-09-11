// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../utilities/helper.dart';
// import '../../../utilities/themes/app_colors.dart';
// import '../../login_screen/view/Screen/LoginScreen.dart';
// import '../../widgets/current_location_text_label.dart';
//
// class IntroScreen extends StatelessWidget {
//   const IntroScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final introKey = GlobalKey<IntroductionScreenState>();
//
//     void _onIntroEnd(context) {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => const LoginScreen()),
//       );
//     }
//
//     const bodyStyle = TextStyle(fontSize: 19.0);
//
//     var pageDecoration = PageDecoration(
//         titleTextStyle:
//             const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//         bodyTextStyle: bodyStyle,
//         bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//         pageColor: Theme.of(context).scaffoldBackgroundColor,
//         imageFlex: isSmallPhone() ? 1 : 2);
//     return IntroductionScreen(
//       key: introKey,
//       globalBackgroundColor: AppColors.whiteColor,
//       globalHeader: Align(
//         alignment: Alignment.topRight,
//         child: SafeArea(
//           child: GestureDetector(
//             onTap: () {
//               _onIntroEnd(context);
//             },
//             child: Padding(
//               padding: const EdgeInsets.only(top: 16, right: 16),
//               child: CurrentLocationTextLabel(
//                 labelText: "Skip",
//                 labelStyle: Theme.of(context).textTheme.bodyLarge,
//               ),
//             ),
//           ),
//         ),
//       ),
//       pages: [
//         PageViewModel(
//           titleWidget: CurrentLocationTextLabel(
//             labelText: "onBoardingMsg1".tr,
//             labelStyle: Theme.of(context).textTheme.headlineMedium,
//           ),
//           bodyWidget: CurrentLocationTextLabel(
//             labelText: "onBoardingMsgDescription1".tr,
//             labelStyle: Theme.of(context)
//                 .textTheme
//                 .labelLarge
//                 ?.copyWith(color: AppColors.greyColor),
//             labelAlign: TextAlign.center,
//           ),
//           image: Image.asset("assets/images/onboarding7.jpg"),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           titleWidget: CurrentLocationTextLabel(
//             labelText: "onBoardingMsg2".tr,
//             labelStyle: Theme.of(context).textTheme.headlineMedium,
//           ),
//           bodyWidget: CurrentLocationTextLabel(
//             labelText: "onBoardingMsgDescription2".tr,
//             labelStyle: Theme.of(context)
//                 .textTheme
//                 .labelLarge
//                 ?.copyWith(color: AppColors.greyColor),
//             labelAlign: TextAlign.center,
//           ),
//           image: Image.asset("assets/images/onboarding5.jpg"),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           titleWidget: CurrentLocationTextLabel(
//             labelText: "onBoardingMsg3".tr,
//             labelStyle: Theme.of(context).textTheme.headlineMedium,
//           ),
//           bodyWidget: CosmeticsTextLabel(
//             labelText: "onBoardingMsgDescription3".tr,
//             labelStyle: Theme.of(context)
//                 .textTheme
//                 .labelLarge
//                 ?.copyWith(color: AppColors.greyColor),
//             labelAlign: TextAlign.center,
//           ),
//           image: Image.asset("assets/images/onboarding4.jpg"),
//           decoration: pageDecoration,
//         ),
//       ],
//       onDone: () => _onIntroEnd(context),
//       showSkipButton: false,
//       skipOrBackFlex: 0,
//       nextFlex: 0,
//       showBackButton: false,
//       next: Container(
//         width: 100,
//         padding: const EdgeInsets.all(18),
//         decoration:  BoxDecoration(
//           color: AppColors.blackColor,
//           shape: BoxShape.rectangle,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow:[
//             BoxShadow(
//               color: AppColors.lightGreyColor.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: const Offset(3, 3), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Center(
//           child: CurrentLocationTextLabel(
//             labelText: "next".tr,
//             labelStyle: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400),
//           ),
//         ),
//       ),
//       curve: Curves.fastLinearToSlowEaseIn,
//       controlsMargin: const EdgeInsets.all(16),
//       done: Container(
//         width: 100,
//           padding: const EdgeInsets.all(18),
//           decoration:  BoxDecoration(
//               color: AppColors.blackColor,
//               shape: BoxShape.rectangle,
//               borderRadius: BorderRadius.circular(10),
//             boxShadow:[
//               BoxShadow(
//                 color: AppColors.lightGreyColor.withOpacity(0.5),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: const Offset(3, 3), // changes position of shadow
//               ),
//             ],
//           ),
//             child: Center(
//               child: CurrentLocationTextLabel(
//                 labelText: "getStarted".tr,
//                 labelStyle: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400),
//               ),
//             ),
//       ),
//       dotsDecorator: const DotsDecorator(
//         size: Size(8, 8),
//         color: AppColors.semiLightGreyColor,
//         activeColor: AppColors.secondaryColor,
//         activeSize: Size(35, 8),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//       ),
//       dotsContainerDecorator: const ShapeDecoration(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8.0)
//           ),
//         ),
//       ),
//    );
//   }
// }
