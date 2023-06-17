import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_logger.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_prompts.dart';
import 'package:hashmi_and_brother_tranport/src/core/app_router.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/views/add_vehicles_screen.dart';
import 'package:hashmi_and_brother_tranport/src/modules/authentication/views/create_user_account.dart';

final authViewModel = ChangeNotifierProvider<AuthViewModel>(
  (ref) => AuthViewModel(),
);

class AuthViewModel extends ChangeNotifier {
  BuildContext get context => _context;
  late BuildContext _context;

  void init(BuildContext context) {
    _context = context;
  }

  TextEditingController name = TextEditingController();
  TextEditingController cnic = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool get isPasswordVisible => _isPasswordVisible;

  bool _isPasswordVisible = true;

  void togglePassword() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void login() {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      appPrint("Email: ${email.text}");
      appPrint("Password: ${password.text}");
      _confirmLogin();
    } else {
      Prompts.showSnackBar(_context, "Email or Password is empty");
    }
  }

  void _confirmLogin() {
    NavigationService.pushReplacement(
      _context,
      const CreateUserAccount(),
    );
  }

  void createUserAccount() {
    if (name.text.isNotEmpty && cnic.text.isNotEmpty && phone.text.isNotEmpty) {
      appPrint("Name: ${name.text}");
      appPrint("CNIC: ${cnic.text}");
      appPrint("Phone: ${phone.text}");
      _confirmCreateUserAccount();
    } else {
      Prompts.showSnackBar(_context, "Please fill all fields");
    }
  }

  void _confirmCreateUserAccount() {
    NavigationService.push(
      _context,
      const AddVehiclesScreen(),
    );
  }
}
