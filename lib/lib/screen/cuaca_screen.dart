import 'package:flutter/material.dart';

class CuacaScreen extends StatefulWidget {
  const CuacaScreen({Key? key}) : super(key: key);

  @override
  State<CuacaScreen> createState() => _CuacaScreenState();
}

class _CuacaScreenState extends State<CuacaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NIM - NAMA"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 18,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8 - 18,
                  child: TextFormField(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2 - 18,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Cari"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "PAMULANG",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .33,
            child: Image.network(
              "https://openweathermap.org/img/w/04n.png",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Rain",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Suhu"),
                Text("30 celcius"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Kecepatan Angin"),
                Text("30 celcius"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Latitude"),
                Text("30 celcius"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Longitude"),
                Text("30 celcius"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
