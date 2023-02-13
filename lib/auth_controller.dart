import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
}