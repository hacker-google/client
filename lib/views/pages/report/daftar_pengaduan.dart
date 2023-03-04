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
      'proses': 'selesai',
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
          SizedBox(
            // get the maximum of height of the screen
            height: MediaQuery.of(context).size.height - 500,
            child: ListView.builder(
              itemCount: _reports.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_reports[index]['title']),
                  subtitle: Text(_reports[index]['proses']),
                  trailing: Text(_reports[index]['tanggal']),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/tambah_pengaduan');
        },
        child: const Row(children: [
          Icon(Icons.add),
          // Text('report'),
        ]),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
