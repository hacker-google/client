part of '_report.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final List<Map<String, dynamic>> _reports = [
    {
      'id': 1,
      'title': 'Perampokan',
      'proses': 'Dalam Proses',
      'tanggal': '12 Januari 2021',
    },
    {
      'id': 2,
      'title': 'Pencurian',
      'proses': 'Selesai',
      'tanggal': '30 Februari 2021',
    },
    {
      'id': 3,
      'title': 'Perampokan dan pencurian',
      'proses': 'Ditolak',
      'tanggal': '11 Januari 2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crime Space'),
        backgroundColor: const Color(0xFF311D3F),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Daftar Pengaduan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.sort),
            title: Text('Sort by Status'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _reports.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCard(
                  title: _reports[index]['title'],
                  status: _reports[index]['proses'],
                  date: _reports[index]['tanggal'],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 120,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          backgroundColor: const Color(0xFF311D3F),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text('Report'),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
