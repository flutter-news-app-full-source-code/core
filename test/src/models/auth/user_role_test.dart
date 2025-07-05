import 'package:ht_shared/src/models/auth/user_role.dart';
import 'package:test/test.dart';

void main() {
  group('UserRoles', () {
    test('constants hold correct string values', () {
      expect(UserRoles.admin, 'admin');
      expect(UserRoles.premiumUser, 'premium_user');
      expect(UserRoles.standardUser, 'standard_user');
      expect(UserRoles.guestUser, 'guest_user');
      expect(UserRoles.publisher, 'publisher');
    });
  });
}
