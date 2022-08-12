import 'dart:io';
void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart data_processing.dart <file>');
    exit(0);
  }
  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr); 
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null){
      totalDurationByTag[tag] = duration;
    }else{
      totalDurationByTag[tag] = previousTotal + duration;
    }
  }
final mainTagDuration =  <String,String>{};
for(var entry in  totalDurationByTag.entries){
 final durationFormatted = entry.value.toStringAsFixed(1) + "h";
 mainTagDuration[entry.key] = durationFormatted ;
}
print(totalDurationByTag);
}
