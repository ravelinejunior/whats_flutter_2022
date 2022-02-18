import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_flutter/stores/main_store.dart';

class ContactsTabScreen extends StatefulWidget {
  ContactsTabScreen({Key? key}) : super(key: key);
  final mainStore = MainStore();

  @override
  State<ContactsTabScreen> createState() => _ContactsTabScreenState();
}

class _ContactsTabScreenState extends State<ContactsTabScreen> {
  @override
  Widget build(BuildContext context) {
    final mainStore = widget.mainStore;
    return ListView.builder(
      itemCount: mainStore.userList.length,
      addRepaintBoundaries: true,
      addSemanticIndexes: true,
      itemBuilder: (_, index) {
        if (mainStore.userList.isEmpty) {
          return Container(
            height: 80,
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Card(
                elevation: 12,
                margin: const EdgeInsets.all(16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Text(
                  'No Contacts Added',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        } else {
          final user = mainStore.userList[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              maxRadius: 30,
              backgroundImage: NetworkImage(
                  'https://i1.sndcdn.com/artworks-000266907338-kv9eva-t500x500.jpg'),
            ),
            title: (Text(
              user.name!,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            )),
            subtitle: Text(
              user.email!,
              style: GoogleFonts.lato(),
            ),
          );
        }
      },
    );
  }

  @override
  void deactivate() {
    widget.mainStore.userStream.cancel();
    super.deactivate();
  }
}
