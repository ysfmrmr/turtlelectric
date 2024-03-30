import 'package:flutter/material.dart';

class CodeReset extends StatefulWidget {
  final Function sendcmd;
  const CodeReset({super.key, required this.sendcmd});

  @override
  State<CodeReset> createState() => _CodeResetState();
}

class _CodeResetState extends State<CodeReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 255, 164),
        title: const Text(
          'Yazılım Resetleme',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 167, 255, 164),
                Color.fromARGB(255, 236, 255, 235),
              ],
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              _resetPopup(context);
            },
            child: const Text("Yazılım Resetle"),
          )),
    );
  }

//widget.sendcmd("hardreset");

  void _resetPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Wİ-Fİ İsim Değişikliği',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            content: Container(
              alignment: Alignment.center,
              height: 65,
              width: 175,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yazılımı resetliyorsunuz.",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  Text(
                    "Emin misiniz?",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  widget.sendcmd("hardreset");
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.of(context).pop();
                  });
                },
                child: const Text('Eminim'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('İptal'),
              ),
            ],
          );
        });
  }
}
