import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';
import 'package:flutter_ewallet/widgets/svg_icon.dart';

class PaymentItem extends StatelessWidget {
  final String iconName;
  final Color iconColor;
  final String paymentName;
  const PaymentItem({
    super.key,
    required this.iconName,
    required this.iconColor,
    required this.paymentName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: whiteColor,
          ),
          child: InkWell(
            child: Center(
                child: SvgIcon(
              iconName,
              color: iconColor,
              width: 35,
              height: 35,
            )),
          ),
        ),
        Text(
          paymentName,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        )
      ],
    );
  }
}
