import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SamplePage112 extends StatelessWidget {
  const SamplePage112({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cached_network_image'),
        centerTitle: true,
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl:
              'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
          progressIndicatorBuilder: (context, url, progress) {
            if (progress.progress != null) {
              final percent = progress.progress! * 100;
              return CircularProgressIndicator(
                value: percent,
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
/*

        
        
        .network(
          
          width: 128,
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : const CircularProgressIndicator();
          },
        ),
        */