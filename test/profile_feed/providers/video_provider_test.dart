// Import the test package and Counter class
import 'package:test/test.dart';

void main() {
  group('range with index', () {
    test('normal case', () {
      int length = 20;
      int index = 10;

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > 5) {
        disposeStartMin = 0;
        disposeStartMax = index - 5;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (length - index > 5) {
        disposeEndMin = index + 6;
        disposeEndMax = length - 1;
        initStartMax = index + 5;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = length - 1;
      }

      expect(disposeStartMin, 0);
      expect(disposeStartMax, 5);

      expect(disposeEndMin, 16);
      expect(disposeEndMax, 19);

      expect(initStartMin, 6);
      expect(initStartMax, 15);
    });

    test('index smaller then 5', () {
      int length = 20;
      int index = 3;

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > 5) {
        disposeStartMin = 0;
        disposeStartMax = index - 5;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (length - index > 5) {
        disposeEndMin = index + 6;
        disposeEndMax = length - 1;
        initStartMax = index + 5;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = length - 1;
      }

      expect(disposeStartMin, -1);
      expect(disposeStartMax, -1);

      expect(disposeEndMin, 9);
      expect(disposeEndMax, 19);

      expect(initStartMin, 0);
      expect(initStartMax, 8);
    });

    test('index bigger then 15', () {
      int length = 20;
      int index = 17;

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > 5) {
        disposeStartMin = 0;
        disposeStartMax = index - 5;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (length - index > 5) {
        disposeEndMin = index + 6;
        disposeEndMax = length - 1;
        initStartMax = index + 5;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = length - 1;
      }

      expect(disposeStartMin, 0);
      expect(disposeStartMax, 12);

      expect(disposeEndMin, -1);
      expect(disposeEndMax, -1);

      expect(initStartMin, 13);
      expect(initStartMax, 19);
    });

        test('index is 0', () {
      int length = 20;
      int index = 0;

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > 5) {
        disposeStartMin = 0;
        disposeStartMax = index - 5;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (length - index > 5) {
        disposeEndMin = index + 6;
        disposeEndMax = length - 1;
        initStartMax = index + 5;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = length - 1;
      }

      expect(disposeStartMin, -1);
      expect(disposeStartMax, -1);

      expect(disposeEndMin, 6);
      expect(disposeEndMax, 19);

      expect(initStartMin, 0);
      expect(initStartMax, 5);
    });

    test('index is 19', () {
      int length = 20;
      int index = 19;

      int disposeStartMin = 0;
      int disposeStartMax = 0;
      int disposeEndMin = 0;
      int disposeEndMax = 0;
      int initStartMin = 0;
      int initStartMax = 0;

      if (index > 5) {
        disposeStartMin = 0;
        disposeStartMax = index - 5;
        initStartMin = index - 4;
      } else {
        disposeStartMin = -1;
        disposeStartMax = -1;
      }

      if (length - index > 5) {
        disposeEndMin = index + 6;
        disposeEndMax = length - 1;
        initStartMax = index + 5;
      } else {
        disposeEndMin = -1;
        disposeEndMax = -1;
        initStartMax = length - 1;
      }

      expect(disposeStartMin, 0);
      expect(disposeStartMax, 14);

      expect(disposeEndMin, -1);
      expect(disposeEndMax, -1);

      expect(initStartMin, 15);
      expect(initStartMax, 19);
    });
  });
}
