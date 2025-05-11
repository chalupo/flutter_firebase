import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();

  Future<void> _addName() async {
    final name = _nameController.text.trim();
    if (name.isNotEmpty) {
      await FirebaseFirestore.instance.collection('nombres').add({
        'nombre': name,
        'timestamp': FieldValue.serverTimestamp(),
      });
      _nameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firebase + Flutter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addName,
              child: const Text('Agregar a Firebase'),
            ),
            const SizedBox(height: 20),
            const Text('Lista de nombres:'),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('nombres')
                    .orderBy('timestamp', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const CircularProgressIndicator();
                  final docs = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      final nombre = docs[index]['nombre'];
                      return ListTile(title: Text(nombre));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}