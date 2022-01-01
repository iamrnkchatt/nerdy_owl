import 'package:edutech/Screens/learner/OnBoarding/splash_screen.dart';
import 'package:edutech/Screens/screens.dart';
import 'package:edutech/main.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}'); // to check in debug console
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/'),
          builder: (_) => const Scaffold(),
        );
      case RouteScreen.routeName:
        return RouteScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case HelpAndSupportScreen.routeName:
        return HelpAndSupportScreen.route();
      case OnBoarding.routeName:
        return OnBoarding.route();
      case LearnerLoginScreen.routeName:
        return LearnerLoginScreen.route();
      case LearnerRegisterScreen.routeName:
        return LearnerRegisterScreen.route();
      case LearnerNavScreen.routeName:
        return LearnerNavScreen.route();
      case LearnerHomeScreen.routeName:
        return LearnerHomeScreen.route();
      case LearnerCoursesScreen.routeName:
        return LearnerCoursesScreen.route();
      case LearnerInstructorScreen.routeName:
        return LearnerInstructorScreen.route();
      case LearnerSettingsScreen.routeName:
        return LearnerSettingsScreen.route();
      case LearnerCourseDetailScreen.routeName:
        return LearnerCourseDetailScreen.route();
      case LearnerInstructorDetailScreen.routeName:
        return LearnerInstructorDetailScreen.route();
      case LearnerProfileScreen.routeName:
        return LearnerProfileScreen.route();
      case LearnerEditProfileScreen.routeName:
        return LearnerEditProfileScreen.route();
      case LearnerMyCoursesScreen.routeName:
        return LearnerMyCoursesScreen.route();
      case LearnerLecturesListScreen.routeName:
        return LearnerLecturesListScreen.route();
      case LearnerEnrolledLectureListScreen.routeName:
        return LearnerEnrolledLectureListScreen.route();
      case LearnerModuleListScreen.routeName:
        return LearnerModuleListScreen.route();
      case LearnerForgotPasswordScreen.routeName:
        return LearnerForgotPasswordScreen.route();
      case LearnerVideoPreviewScreen.routeName:
        return LearnerVideoPreviewScreen.route();

      //Instructor

      case InstructorNavScreen.routeName:
        return InstructorNavScreen.route();
      case InstructorHomeScreen.routeName:
        return InstructorHomeScreen.route();
      case InstructorCoursesScreen.routeName:
        return InstructorCoursesScreen.route();
      case InstructorSettingsScreen.routeName:
        return InstructorSettingsScreen.route();
      case InstructorProfileScreen.routeName:
        return InstructorProfileScreen.route();
      case InstructorEditProfileScreen.routeName:
        return InstructorEditProfileScreen.route();
      case InstructorLectureListScreen.routeName:
        return InstructorLectureListScreen.route();
      case InstructorCreateCourse.routeName:
        return InstructorCreateCourse.route();
      case InstructorCreateCourseModule1.routeName:
        return InstructorCreateCourseModule1.route();
      case InstructorCreateCourseModule2.routeName:
        return InstructorCreateCourseModule2.route();
      case InstructorCreateCourseModule3.routeName:
        return InstructorCreateCourseModule3.route();

      default:
        return _errorRoute();
    }
  }

  // static Route onGenerateNestedRoute(RouteSettings settings) {
  //   print('Nested Route: ${settings.name}');
  //   switch (settings.name) {
  //     case ProfileScreen.routeName:
  //       return ProfileScreen.route(args: settings.arguments);
  //     case EditProfileScreen.routeName:
  //       return EditProfileScreen.route(args: settings.arguments);

  //     case TermsScreen.routeName:
  //       return TermsScreen.route();
  //     case PrivacyScreen.routeName:
  //       return PrivacyScreen.route();
  //     case TaxScreen.routeName:
  //       return TaxScreen.route(args: settings.arguments);
  //     case TaxFormScreen.routeName:
  //       return TaxFormScreen.route();
  //     case ItemFormScreen.routeName:
  //       return ItemFormScreen.route(args: settings.arguments);
  //     case CustomerFormScreen.routeName:
  //       return CustomerFormScreen.route(args: settings.arguments);
  //     case InvoiceFormScreen.routeName:
  //       return InvoiceFormScreen.route();
  //     case InvoicePdfScreen.routeName:
  //       return InvoicePdfScreen.route();
  //     default: //If no route will be found than this route will be generated
  //       return _errorRoute();
  //   }
  // }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: const Center(
                child: Text('Something Went Wrong'),
              ),
            ));
  }
}
