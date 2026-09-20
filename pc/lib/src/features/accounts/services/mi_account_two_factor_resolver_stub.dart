import 'package:flutter/widgets.dart';

import 'mi_account_two_factor_resolver_base.dart';

MiAccountTwoFactorResolver createPlatformMiAccountTwoFactorResolver() {
  return const UnsupportedMiAccountTwoFactorResolver();
}

class UnsupportedMiAccountTwoFactorResolver
    implements MiAccountTwoFactorResolver {
  const UnsupportedMiAccountTwoFactorResolver();

  @override
  Future<String> resolve(BuildContext context, Uri notificationUrl) {
    throw UnsupportedError(
      'This platform does not support embedded Xiaomi 2FA',
    );
  }
}
