import 'package:flutter/material.dart';

class PilihanWisata extends StatefulWidget {
  const PilihanWisata({super.key});

  @override
  PilihanWisataState createState() => PilihanWisataState();
}

class PilihanWisataState extends State<PilihanWisata> {
  String wisata = "Tidak ada wisata yang dipilih";

  void vacation(String value, String value2) {
    setState(() {
      wisata = value + value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      //Card 1
      Card(
          child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(5)),
          Column(
            children: const [
              Center(
                child: Text("Wisata Pulau Lombok",
                    style: TextStyle(color: Colors.orange, fontSize: 22)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            children: const <Widget>[
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                height: 75,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                  child: Text(
                      "Pulau Lombok adalah sebuah pulau di kepulauan Sunda Kecil atau Nusa Tenggara yang terpisahkan oleh Selat Lombok dari Bali di sebelah Barat dan Selat Alas di sebelah timur dari Sumbawa.")),
            ],
          ),
          Column(children: <Widget>[
            const Padding(padding: EdgeInsets.all(6)),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {
                setState(() {
                  vacation("Anda memilih ", "Wisata Pulau Lombok");
                });
              },
              child: const Text("Pilih Wisata"),
            ),
          ]),
          const Padding(padding: EdgeInsets.all(6)),
        ],
      )),

      //Card 2
      Card(
          child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(10)),
          Column(
            children: const [
              Center(
                child: Text("Wisata Gili Trawangan",
                    style: TextStyle(color: Colors.orange, fontSize: 22)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            children: const <Widget>[
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                height: 75,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                  child: Text(
                      "Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terdapat di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan")),
            ],
          ),
          Column(children: <Widget>[
            const Padding(padding: EdgeInsets.all(6)),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {
                setState(() {
                  vacation("Anda memilih ", "Wisata Gili Trawangan");
                });
              },
              child: const Text("Pilih Wisata"),
            ),
          ]),
          const Padding(padding: EdgeInsets.all(6)),
        ],
      )),

      //Card 3
      Card(
          child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(10)),
          Column(
            children: const [
              Center(
                child: Text("Wisata Pantai Lovina",
                    style: TextStyle(color: Colors.orange, fontSize: 22)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            children: const <Widget>[
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                height: 75,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                  child: Text(
                      "Pantai Lovina atau Loviana terletak sekitar 9 Km sebelah barat kota Singaraja, ini merupakan salah satu objek wisata yang ada di Bali Utara")),
            ],
          ),
          Column(children: <Widget>[
            const Padding(padding: EdgeInsets.all(6)),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {
                setState(() {
                  vacation("Anda memilih ", "Wisata Pantai Lovina");
                });
              },
              child: const Text("Pilih Wisata"),
            ),
          ]),
          const Padding(padding: EdgeInsets.all(6)),
        ],
      )),

      const Padding(padding: EdgeInsets.all(10)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(wisata, style: const TextStyle(color: Colors.red, fontSize: 18))
        ],
      ),
    ]);
  }
}
