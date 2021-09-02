import '../../app/modules/account/bindings/account_binding.dart';
import '../../app/modules/account/views/account_view.dart';
import '../../app/modules/register/bindings/register_binding.dart';
import '../../app/modules/register/views/register_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ACCOUNT;

  static final routes = [
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
