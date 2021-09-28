import 'dart:io' show Process, ProcessResult;

Future<ProcessResult> compareImages(String first, String second, String name) {
  return Process.run('python3', <String>[
    'test_driver/main.py',
    '--first',
    first,
    '--second',
    second,
    '--name',
    name,
    '--output',
    '/test_driver/images/diff',
  ]);
}
