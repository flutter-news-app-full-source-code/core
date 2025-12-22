import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('DataPoint Model', () {
    final now = DateTime.now();

    // Time-series data point
    final timeSeriesDataPoint = DataPoint(timestamp: now, value: 150);
    final timeSeriesJson = timeSeriesDataPoint.toJson();

    // Categorical data point
    const categoricalDataPoint = DataPoint(label: 'Category A', value: 250);
    final categoricalJson = categoricalDataPoint.toJson();

    group('Constructors', () {
      test(
        'should throw assertion error if both timestamp and label are null',
        () {
          expect(() => DataPoint(value: 100), throwsA(isA<AssertionError>()));
        },
      );

      test(
        'should throw assertion error if both timestamp and label are provided',
        () {
          expect(
            () => DataPoint(timestamp: now, label: 'Category A', value: 100),
            throwsA(isA<AssertionError>()),
          );
        },
      );
    });

    group('fromJson', () {
      test(
        'should correctly deserialize a time-series data point from JSON',
        () {
          final fromJson = DataPoint.fromJson(timeSeriesJson);
          expect(fromJson, equals(timeSeriesDataPoint));
        },
      );

      test(
        'should correctly deserialize a categorical data point from JSON',
        () {
          final fromJson = DataPoint.fromJson(categoricalJson);
          expect(fromJson, equals(categoricalDataPoint));
        },
      );
    });

    group('toJson', () {
      test('should correctly serialize a time-series data point to JSON', () {
        final toJson = timeSeriesDataPoint.toJson();
        expect(toJson, equals(timeSeriesJson));
        expect(toJson['timestamp'], isNotNull);
        expect(toJson['label'], isNull);
      });

      test('should correctly serialize a categorical data point to JSON', () {
        final toJson = categoricalDataPoint.toJson();
        expect(toJson, equals(categoricalJson));
        expect(toJson['timestamp'], isNull);
        expect(toJson['label'], isNotNull);
      });
    });

    group('copyWith', () {
      test(
        'should return a new instance with updated values for time-series',
        () {
          final newTime = now.add(const Duration(days: 1));
          final updatedPoint = timeSeriesDataPoint.copyWith(
            timestamp: newTime,
            value: 999,
          );

          expect(updatedPoint.timestamp, newTime);
          expect(updatedPoint.value, 999);
          expect(updatedPoint.label, isNull);
        },
      );

      test(
        'should switch from time-series to categorical without asserting',
        () {
          // This should not throw an error.
          final categoricalPoint = timeSeriesDataPoint.copyWith(
            label: 'New Category',
          );

          expect(categoricalPoint.label, 'New Category');
          expect(categoricalPoint.timestamp, isNull);
          expect(categoricalPoint.value, timeSeriesDataPoint.value);
        },
      );

      test(
        'should switch from categorical to time-series without asserting',
        () {
          final newTime = now.add(const Duration(hours: 5));
          // This should not throw an error.
          final newTimeSeriesPoint = categoricalDataPoint.copyWith(
            timestamp: newTime,
          );

          expect(newTimeSeriesPoint.timestamp, newTime);
          expect(newTimeSeriesPoint.label, isNull);
          expect(newTimeSeriesPoint.value, categoricalDataPoint.value);
        },
      );

      test(
        'should return a new instance with updated values for categorical',
        () {
          final updatedPoint = categoricalDataPoint.copyWith(
            label: 'Category B',
            value: 300,
          );

          expect(updatedPoint.label, 'Category B');
          expect(updatedPoint.value, 300);
          expect(updatedPoint.timestamp, isNull);
        },
      );
    });

    group('Equatable', () {
      test('should equate two identical time-series instances', () {
        final instance1 = DataPoint(timestamp: now, value: 150);
        final instance2 = DataPoint(timestamp: now, value: 150);
        expect(instance1, equals(instance2));
      });

      test('should equate two identical categorical instances', () {
        const instance1 = DataPoint(label: 'Category A', value: 250);
        const instance2 = DataPoint(label: 'Category A', value: 250);
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = DataPoint(timestamp: now, value: 150);
        final instance2 = DataPoint(timestamp: now, value: 999);
        const instance3 = DataPoint(label: 'Category A', value: 250);
        expect(instance1, isNot(equals(instance2)));
        expect(instance1, isNot(equals(instance3)));
      });

      test('props list should contain all relevant fields', () {
        expect(timeSeriesDataPoint.props, [
          timeSeriesDataPoint.timestamp,
          timeSeriesDataPoint.label,
          timeSeriesDataPoint.value,
        ]);
      });
    });
  });
}
