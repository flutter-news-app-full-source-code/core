import 'package:core/src/exceptions/exceptions.dart';
import 'package:test/test.dart';

void main() {
  group('HtHttpException', () {
    test('constructor sets message', () {
      const message = 'Test message';
      const exception = HtHttpException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Test message';
      const exception = HtHttpException(message);
      expect(exception.toString(), 'HtHttpException: $message');
    });
  });

  group('AuthenticationException', () {
    test('constructor sets message', () {
      const message = 'Authentication failed';
      const exception = AuthenticationException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Authentication failed';
      const exception = AuthenticationException(message);
      expect(exception.toString(), 'AuthenticationException: $message');
    });
  });

  group('BadRequestException', () {
    test('constructor sets message', () {
      const message = 'Bad request';
      const exception = BadRequestException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Bad request';
      const exception = BadRequestException(message);
      expect(exception.toString(), 'BadRequestException: $message');
    });
  });

  group('NotFoundException', () {
    test('constructor sets message', () {
      const message = 'Not found';
      const exception = NotFoundException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Not found';
      const exception = NotFoundException(message);
      expect(exception.toString(), 'NotFoundException: $message');
    });
  });

  group('NetworkException', () {
    test('constructor sets default message', () {
      const exception = NetworkException();
      expect(exception.message, 'Network error occurred');
    });

    test('toString includes runtimeType and message', () {
      const exception = NetworkException();
      expect(exception.toString(), 'NetworkException: Network error occurred');
    });
  });
}
