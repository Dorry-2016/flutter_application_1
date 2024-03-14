import 'package:flutter/material.dart';

class Recover extends StatelessWidget {
  const Recover({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Recovery',
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Recover",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Form(
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            labelText:
                                'please enter your email or phone number to continue',
                            // hintText: 'enter first name',
                            prefixIcon: Icon(Icons.text_format),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty
                                ? 'please enter first name'
                                : null;
                          },
                        ))
                  ]),
                )
              ]),
        ));
  }
}
