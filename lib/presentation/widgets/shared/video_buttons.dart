import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          cantidad: video.likes, 
          iconData: Icons.favorite, 
          iconColors: Colors.red
        ),

        const SizedBox(height: 20),

        _CustomIconButton(
          cantidad: video.views, 
          iconData: Icons.remove_red_eye_outlined, 
        ),

        const SizedBox(height: 20),

        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 1),
          child: const _CustomIconButton(
            cantidad: 0, 
            iconData: Icons.play_circle_outline, 
          ),
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int cantidad;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.cantidad, 
    required this.iconData, 
    iconColors}) : color = iconColors ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(
            iconData, 
            color: color,
            size: 35,
            )
        ),
        if(cantidad > 0)
        Text(HumanFormats.humanReadNumber(cantidad.toDouble()))
      ],
    );
  }
}