import 'package:ht_shared/src/models/permission.dart';
import 'package:test/test.dart';

void main() {
  group('Permission Model', () {
    const permissionName = 'test.permission';

    test('supports value equality', () {
      expect(
        const Permission(name: permissionName),
        equals(const Permission(name: permissionName)),
      );
      expect(
        const Permission(name: permissionName),
        isNot(equals(const Permission(name: 'other.permission'))),
      );
    });

    group('fromJson', () {
      test('returns correct Permission object for valid JSON', () {
        final json = <String, dynamic>{'name': permissionName};
        final permission = Permission.fromJson(json);
        expect(permission.name, permissionName);
      });
    });

    group('toJson', () {
      test('returns correct JSON map for valid Permission object', () {
        const permission = Permission(name: permissionName);
        final json = permission.toJson();
        expect(json, <String, dynamic>{'name': permissionName});
      });
    });

    test('has correct toString', () {
      expect(
        const Permission(name: permissionName).toString(),
        equals('Permission(name: $permissionName)'),
      );
    });
  });
}
