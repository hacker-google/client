part of '_card.dart';

class MyCard extends StatefulWidget {
  final String? title, status, date;
  const MyCard({super.key, this.title, this.status, this.date});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.green.shade300,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title!),
                    Text(widget.status!),
                    Text(widget.date!),
                  ]),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        // ListTile(
        //   title: Text(widget.title!),
        //   subtitle: Text(widget.status!),
        //   trailing: Text(widget.date!),
        // ),
      ),
    );
  }
}
