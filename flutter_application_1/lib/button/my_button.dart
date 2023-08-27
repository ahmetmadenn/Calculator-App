import 'package:flutter/material.dart';

// düğmeler için Durum Bilgisi Olmayan Widget oluşturuluyor
class MyButton extends StatelessWidget {
// değişkenleri bildiriyoruz

  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

//yapıcı method
  MyButton(
      {required this.color,
      required this.textColor,
      required this.buttonText,
      required this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
