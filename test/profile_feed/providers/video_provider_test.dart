// Import the test package and Counter class
import 'package:dating_stream/profile_feed/providers/video_provider.dart';
import 'package:test/test.dart';

void main() {
  group('range with index', () {
    test('normal case', () {
      int length = 20;
      int index = 10;
      int threshhold = 5;
      VideoProvider videoProvider = new VideoProvider();
      List<int> values = videoProvider.splitList(index, length, threshhold);

      int disposeStartMin = values[0];
      int disposeStartMax = values[1];
      int disposeEndMin = values[2];
      int disposeEndMax = values[3];
      int initStartMin = values[4];
      int initStartMax = values[5];

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
      int threshhold = 5;
      VideoProvider videoProvider = new VideoProvider();
      List<int> values = videoProvider.splitList(index, length, threshhold);

      int disposeStartMin = values[0];
      int disposeStartMax = values[1];
      int disposeEndMin = values[2];
      int disposeEndMax = values[3];
      int initStartMin = values[4];
      int initStartMax = values[5];

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
      int threshhold = 5;
      VideoProvider videoProvider = new VideoProvider();
      List<int> values = videoProvider.splitList(index, length, threshhold);

      int disposeStartMin = values[0];
      int disposeStartMax = values[1];
      int disposeEndMin = values[2];
      int disposeEndMax = values[3];
      int initStartMin = values[4];
      int initStartMax = values[5];

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
      int threshhold = 5;
      VideoProvider videoProvider = new VideoProvider();
      List<int> values = videoProvider.splitList(index, length, threshhold);

      int disposeStartMin = values[0];
      int disposeStartMax = values[1];
      int disposeEndMin = values[2];
      int disposeEndMax = values[3];
      int initStartMin = values[4];
      int initStartMax = values[5];

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
      int threshhold = 5;
      VideoProvider videoProvider = new VideoProvider();
      List<int> values = videoProvider.splitList(index, length, threshhold);

      int disposeStartMin = values[0];
      int disposeStartMax = values[1];
      int disposeEndMin = values[2];
      int disposeEndMax = values[3];
      int initStartMin = values[4];
      int initStartMax = values[5];

      expect(disposeStartMin, 0);
      expect(disposeStartMax, 14);

      expect(disposeEndMin, -1);
      expect(disposeEndMax, -1);

      expect(initStartMin, 15);
      expect(initStartMax, 19);
    });
  });
}
