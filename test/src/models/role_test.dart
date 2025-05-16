import 'package:ht_shared/src/models/role.dart';
import 'package:test/test.dart';

void main() {
  group('Role Model', () {
    const roleName = 'test_role';

    test('supports value equality', () {
      expect(const Role(name: roleName), equals(const Role(name: roleName)));
      expect(
        const Role(name: roleName),
        isNot(equals(const Role(name: 'other_role'))),
      );
    });

    group('fromJson', () {
      test('returns correct Role object for valid JSON', () {
        final json = <String, dynamic>{'name': roleName};
        final role = Role.fromJson(json);
        expect(role.name, roleName);
      });
    });

    group('toJson', () {
      test('returns correct JSON map for valid Role object', () {
        const role = Role(name: roleName);
        final json = role.toJson();
        expect(json, <String, dynamic>{'name': roleName});
      });
    });

    test('has correct toString', () {
      expect(
        const Role(name: roleName).toString(),
        equals('Role(name: $roleName)'),
      );
    });
  });
}
