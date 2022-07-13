import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text("HomePage"),
          ),
          TextButton(
              onPressed: () {
                model.unauthenticate();
              },
              child: const Text("Log Out"))
        ],
      ),
    );
  }
}
