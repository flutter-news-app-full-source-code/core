import 'package:ht_shared/src/models/user_role.dart';
import 'package:test/test.dart';

void main() {
  group('UserRole', () {
    test('has correct string values for JSON serialization', () {
      expect(UserRole.admin.name, 'admin');
      expect(UserRole.standardUser.name, 'standardUser');
      expect(UserRole.guestUser.name, 'guestUser');
    });

    test('can be created from string values', () {
      expect(UserRole.values.byName('admin'), UserRole.admin);
      expect(UserRole.values.byName('standardUser'), UserRole.standardUser);
      expect(UserRole.values.byName('guestUser'), UserRole.guestUser);
    });

    test('has correct toString representation', () {
      expect(UserRole.admin.toString(), 'UserRole.admin');
      expect(UserRole.standardUser.toString(), 'UserRole.standardUser');
      expect(UserRole.guestUser.toString(), 'UserRole.guestUser');
    });
  });
}
