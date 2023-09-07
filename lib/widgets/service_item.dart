import 'package:flutter/material.dart';
import 'package:flutter_ewallet/widgets/svg_icon.dart';
import '../utils/theme.dart';

class ServiceItem extends StatelessWidget {
  final String iconName;
  final String serviceName;
  const ServiceItem({
    super.key,
    required this.iconName,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgIcon(
            iconName,
            color: secondaryColor,
          ),
        ),
        Text(
          serviceName,
          style: blackTextStyle,
        )
      ],
    );
  }
}
