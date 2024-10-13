import 'package:flutter/material.dart';


class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Page'),
      ),
      body: const Center(
        child: Text('Hello manage page'),
      ),
    );
  }
}

class TagPage extends StatelessWidget {
  const TagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tag Page'),
      ),
      body: const Center(
        child: Text('Hello tag page'),
      ),
    );
  }
}