import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.img});
  final String? img;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
          imageUrl: img ??
              "https://ca-times.brightspotcdn.com/dims4/default/fe7ec1a/2147483647/strip/true/crop/2429x2429+0+0/resize/1200x1200!/format/webp/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F4e%2F8e%2F720ccea74b33867a036e5c31f281%2Fla-photos-handouts-la-gg-sports-book-paradise-found.JPG",
          placeholder: (context, url) => const CustomLoadingWidget(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
//"https://ca-times.brightspotcdn.com/dims4/default/fe7ec1a/2147483647/strip/true/crop/2429x2429+0+0/resize/1200x1200!/format/webp/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F4e%2F8e%2F720ccea74b33867a036e5c31f281%2Fla-photos-handouts-la-gg-sports-book-paradise-found.JPG"
