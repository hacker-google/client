part of '_card.dart';

class MyCard extends StatefulWidget {
  final String? title, status, date;
  const MyCard({super.key, this.title, this.status, this.date});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  String _title = '';
  String _status = '';
  String _date = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_title),
        subtitle: Text(_status),
        trailing: Text(_date),
      ),
    );
  }
}
