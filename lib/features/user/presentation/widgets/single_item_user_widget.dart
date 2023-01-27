import 'package:flutter/material.dart';

class SingleItemUserWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const SingleItemUserWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(""),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "username",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "status",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      child: Divider(
                        thickness: 1.5,
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
