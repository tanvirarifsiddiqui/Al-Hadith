// Custom widget for each row item
import 'package:flutter/cupertino.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const RowItem({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}