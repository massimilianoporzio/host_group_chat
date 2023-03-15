import 'package:flutter/material.dart';

import '../theme/style.dart';

class PrivacyPolicyTermsWidget extends StatelessWidget {
  final String testo;
  const PrivacyPolicyTermsWidget({
    super.key,
    required this.testo,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          "*clicando '$testo' acconsenti alla ",
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        InkWell(
          onTap: () {
            //TODO naviga alla privacy policy
          },
          child: const Text(
            "Privacy Policy",
            style: TextStyle(
                color: Palette.kToDark,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
        ),
        const Text(
          " ed ai ",
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
        InkWell(
          onTap: () {
            //TODO naviga ai termini d'uso
          },
          child: const Text(
            "Termini d'uso",
            style: TextStyle(
                color: Palette.kToDark,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
        ),
      ],
    );
  }
}
