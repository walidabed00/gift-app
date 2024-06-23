import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "hello",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter Amount',
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onHover: (value) => {const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white))},
                onPressed: () => print('hii'),
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 55))),
                child:
                    const Text("Submit", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
