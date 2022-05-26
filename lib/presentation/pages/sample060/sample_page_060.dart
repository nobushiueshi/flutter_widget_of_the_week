import 'package:flutter/material.dart';

class SamplePage060 extends StatelessWidget {
  const SamplePage060({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const Center(
              child: Text('Hello Flutter!'),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (context, scrollController) {
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: const [
                        FlutterLogo(
                          size: 256,
                        ),
                        FlutterLogo(
                          size: 256,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
