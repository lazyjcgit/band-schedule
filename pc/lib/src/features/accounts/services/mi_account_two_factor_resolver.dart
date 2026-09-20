import 'mi_account_two_factor_resolver_stub.dart'
    if (dart.library.io) 'mi_account_two_factor_resolver_io.dart'
    if (dart.library.html) 'mi_account_two_factor_resolver_web.dart';
import 'mi_account_two_factor_resolver_base.dart';

export 'mi_account_two_factor_resolver_base.dart';

MiAccountTwoFactorResolver createMiAccountTwoFactorResolver() {
  return createPlatformMiAccountTwoFactorResolver();
}
