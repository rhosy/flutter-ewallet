import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';
import 'package:flutter_ewallet/widgets/payment_item.dart';
import 'package:flutter_ewallet/widgets/service_item.dart';
import 'package:flutter_ewallet/widgets/svg_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            secondaryColor,
            primaryColor,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 210),
                decoration: const BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
              ListView(
                children: [
                  headerWidget(context),
                  balanceWidget(context),
                  const SizedBox(
                    height: 32,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        margin:
                            const EdgeInsets.only(top: 39, left: 0, right: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildPaymentFeature(context),
                            buildPromo(context),
                            buildNews(context),
                          ],
                        ),
                      ),
                      buildServices(context),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget headerWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1610276198568-eb6d0ff53e48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2680&q=80"),
        ),
        IconButton(
            onPressed: () {},
            icon: const SvgIcon(
              'Notification',
              color: whiteColor,
            ))
      ],
    ),
  );
}

Widget balanceWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 32.0),
    child: Column(
      children: [
        Text(
          "Available Balance",
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        Text(
          "\$21,350.40",
          style: whiteTextStyle.copyWith(
            fontWeight: extraBold,
            fontSize: 25,
          ),
        )
      ],
    ),
  );
}

Widget buildServices(BuildContext context) {
  return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: greyColor,
                spreadRadius: 0.5,
                blurRadius: 0.2,
                offset: Offset(0.0, 0.8))
          ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ServiceItem(
            iconName: "wallet-add",
            serviceName: "Top Up",
          ),
          ServiceItem(
            iconName: "money-send",
            serviceName: "Send",
          ),
          ServiceItem(
            iconName: "money-recive",
            serviceName: "Request",
          ),
          ServiceItem(
            iconName: "clock",
            serviceName: "History",
          ),
        ],
      ));
}

Widget buildPaymentFeature(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 64, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment List",
          style: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PaymentItem(
              iconName: "wifi-square",
              iconColor: primaryColor,
              paymentName: "Pulsa",
            ),
            PaymentItem(
              iconName: "home-wifi",
              iconColor: redColor,
              paymentName: "Telkom",
            ),
            PaymentItem(
              iconName: "flash",
              iconColor: yellowColor,
              paymentName: "Electricity",
            ),
            PaymentItem(
              iconName: "more",
              iconColor: blackColor,
              paymentName: "More",
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildPromo(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Promo & Discount",
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Text(
              "See More",
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                color: secondaryColor,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 16, top: 16, right: 8, bottom: 16),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/banner1.png"),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 8, top: 16, right: 20, bottom: 16),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/banner2.png"),
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      )
    ],
  );
}

Widget buildNews(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hot News",
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Text(
              "See More",
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                color: secondaryColor,
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: whiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/banner1.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bahaya Kebanyakan Hutang, Bikin Gali Lubang Tutup Lubang",
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Sebenarnya hutang bukanlah hal yang buruk dan jadi hal yang biasa. Pasti beberapa",
                        style: blackTextStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "5 minutes ago",
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}
