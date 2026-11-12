import 'package:flutter/material.dart';

// Enum with attributes to manage button types and their specific colors
enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;
  const ButtonType(this.color);
}

// Enum to manage icon placement relative to the label
enum IconPosition {
  left,
  right,
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  // Constructor with required and optional default parameters + super.key
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    final Color contentColor = Colors.white;

    final List<Widget> buttonChildren = [
      Icon(icon, color: contentColor, size: 20),
      const SizedBox(width: 8),
      Text(
        label,
        style: TextStyle(
          color: contentColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: type == ButtonType.disabled
            ? Colors.grey.shade300
            : type.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left
            ? buttonChildren
            : buttonChildren.reversed.toList(),
      ),
    );
  }
}