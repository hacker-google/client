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
      height: 150,
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
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(widget.title!,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: Row(
                        children: [
                          if (widget.status == 'Dalam Proses') ...{
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(UniconsLine.clock,
                                  size: 20, color: Colors.orange),
                            ),
                            Text(widget.status!,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.orange)),
                          },
                          if (widget.status == 'Selesai') ...{
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(UniconsLine.check_circle,
                                  size: 20, color: Colors.green),
                            ),
                            Text(widget.status!,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.green)),
                          },
                          if (widget.status == 'Ditolak') ...{
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(UniconsLine.times_circle,
                                  size: 20, color: Colors.red),
                            ),
                            Text(widget.status!,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.red)),
                          }
                        ],
                      ),
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
