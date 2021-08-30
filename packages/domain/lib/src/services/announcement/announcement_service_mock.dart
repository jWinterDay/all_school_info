import 'dart:io';

import 'package:computer/computer.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

const String _kBody = '''
  Цветок сникает, юность быстротечна,
  И на веку людском ступень любая,
  Любая мудрость временна, конечна,
  Любому благу срок отмерен точно.
  Так пусть же, зову жизни отвечая,
  Душа легко и весело простится
  С тем, с чем связать себя посмела прочно,
  Пускай не сохнет в косности монашьей!
  В любом начале волшебство таится,
  Оно нам в помощь, в нем защита наша.

  Пристанищ не искать, не приживаться,
  Ступенька за ступенькой, без печали,
  Шагать вперед, идти от дали к дали,
  Все шире быть, все выше подниматься!
  Засасывает круг привычек милых,
  Уют покоя полон искушенья.
  Но только тот, кто с места сняться в силах,
  Спасет свой дух живой от разложенья.

  И даже возле входа гробового
  Жизнь вновь, глядишь, нам кликнет клич призывный,
  И путь опять начнется непрерывный...
  Простись же, сердце, и окрепни снова.''';

int _cnt = 0;

Future<void> _someExpensiveMethod() async {
  sleep(const Duration(seconds: 1));

  if (_cnt++ % 2 == 0) {
    throw const TlsException('fsdfsd>>>>>>>>>> fsd');
  }
}

class AnnouncementServiceMock implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    // final Computer computer = getIt.get<Computer>();

    // await computer.compute<void, void>(_someExpensiveMethod);

    await Future<void>.delayed(const Duration(seconds: 2));

    int listCount = 0;
    switch (_cnt++ % 3) {
      case 0:
        listCount = 15;
        break;
      case 1:
        listCount = 0;
        break;
      case 2:
        throw const TlsException('test exception');
      default:
        listCount = 15;
    }

    return List<AnnouncementModel>.generate(listCount, (int index) {
      return AnnouncementModel(
        '$index',
        content: '${_kBody.toString()} >> fsdf',
        title: 'looooooooooo oooooooooooo ooooooOOOoo OOOOoooOOoooong_title_$index',
      );
    });
  }
}
