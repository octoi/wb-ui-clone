import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const BottomIconButton({
    Key? key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Icon(icon, color: isSelected ? appBlue : appGrey),
          const SizedBox(height: 5.0),
          Text(
            label,
            style: TextStyle(color: isSelected ? appBlue : appGrey),
          )
        ],
      ),
    );
  }
}
