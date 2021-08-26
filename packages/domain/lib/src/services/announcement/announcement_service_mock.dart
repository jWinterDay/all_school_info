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

class AnnouncementServiceMock implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return List<AnnouncementModel>.generate(15, (int index) {
      return AnnouncementModel(
        '$index',
        content: _kBody.toString(),
        title: 'looooooooooo oooooooooooo ooooooOOOoo OOOOoooOOoooong_title_$index',
      );
    });
  }
}
