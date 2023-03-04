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
      height: 200,
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
                    Row(
                      children: [
                        if (widget.status == 'Dalam Proses')
                          const Icon(UniconsLine.clock, size: 20),
                        if (widget.status == 'Selesai')
                          const Icon(UniconsLine.check_circle, size: 20),
                        if (widget.status == 'Ditolak')
                          const Icon(UniconsLine.times_circle, size: 20),
                        Text(widget.status!),
                      ],
                    ),
                    Text(widget.date!),
                  ]),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
