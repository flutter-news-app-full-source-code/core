import 'package:core/src/exceptions/exceptions.dart';
import 'package:test/test.dart';

void main() {
  group('HttpException', () {
    test('constructor sets message', () {
      const message = 'Test message';
      const exception = HttpException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Test message';
      const exception = HttpException(message);
      expect(exception.toString(), 'HttpException: $message');
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

  group('ConflictException', () {
    test('constructor sets message', () {
      const message = 'Conflict';
      const exception = ConflictException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Conflict';
      const exception = ConflictException(message);
      expect(exception.toString(), 'ConflictException: $message');
    });
  });

  group('ForbiddenException', () {
    test('constructor sets message', () {
      const message = 'Forbidden';
      const exception = ForbiddenException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Forbidden';
      const exception = ForbiddenException(message);
      expect(exception.toString(), 'ForbiddenException: $message');
    });
  });

  group('InvalidInputException', () {
    test('constructor sets message', () {
      const message = 'Invalid input';
      const exception = InvalidInputException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Invalid input';
      const exception = InvalidInputException(message);
      expect(exception.toString(), 'InvalidInputException: $message');
    });
  });

  group('OperationFailedException', () {
    test('constructor sets message', () {
      const message = 'Operation failed';
      const exception = OperationFailedException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Operation failed';
      const exception = OperationFailedException(message);
      expect(exception.toString(), 'OperationFailedException: $message');
    });
  });

  group('ServerException', () {
    test('constructor sets message', () {
      const message = 'Server error';
      const exception = ServerException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Server error';
      const exception = ServerException(message);
      expect(exception.toString(), 'ServerException: $message');
    });
  });

  group('UnauthorizedException', () {
    test('constructor sets message', () {
      const message = 'Unauthorized';
      const exception = UnauthorizedException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Unauthorized';
      const exception = UnauthorizedException(message);
      expect(exception.toString(), 'UnauthorizedException: $message');
    });
  });

  group('UnknownException', () {
    test('constructor sets message', () {
      const message = 'Unknown error';
      const exception = UnknownException(message);
      expect(exception.message, message);
    });

    test('toString includes runtimeType and message', () {
      const message = 'Unknown error';
      const exception = UnknownException(message);
      expect(exception.toString(), 'UnknownException: $message');
    });
  });
}
