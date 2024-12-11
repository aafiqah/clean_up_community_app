import 'package:clean_up_community_app/presentation/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({super.key});

  @override
  State<CreateEventPage> createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarShared(
        stringTitle: 'Create Event',
        leading: BackButtonGlobal(
          onPressed: () {
            context.goNamed('/home_page');
          },
        ),
      ),
    );
  }
}
