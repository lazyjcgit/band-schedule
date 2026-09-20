import 'package:flutter/widgets.dart';

abstract class MiAccountTwoFactorResolver {
  Future<String> resolve(BuildContext context, Uri notificationUrl);
}
