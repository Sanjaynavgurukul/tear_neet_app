
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCacheImage extends StatelessWidget {
  final String? imageUrl;
  final double height;
  final double width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final bool showBorder;
  final Color? color;
  final BoxFit fit;
  final bool showLogo;

  const CustomCacheImage({
    Key? key,
    required this.imageUrl,
    this.height = double.infinity,
    this.width=double.infinity,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.borderRadius =  const BorderRadius.all(Radius.circular(6)),
    this.border,
    this.color,
    this.showLogo = false,
    this.fit = BoxFit.cover,
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(imageUrl == null || imageUrl!.isEmpty){
      return  Container(
          width: width,
          height: height,
          margin: margin,
          padding: EdgeInsets.all(showLogo?4:0),
          // padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color ?? Colors.grey[100],
            borderRadius:
            borderRadius ?? BorderRadius.circular(100),
            border:  showBorder?Border.all(
              color: Colors.black,
              width: 0.4,
            ):null,
          ),
          child:ClipOval(
            // child: Image.asset(showLogo?AssetsHelper.whiteBodhiLogoOnly:Assets.userPlaceHolder,
            child: Image.asset('assets/double-up-arrow.png',
              fit: BoxFit.cover,),
          )
      );
    }
    return CachedNetworkImage(
      key: UniqueKey(),
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        margin: margin,
        padding:padding,

        decoration: BoxDecoration(
          borderRadius:
          borderRadius ?? BorderRadius.circular(8),
          border: showBorder ? border : null,
          color: color??Colors.grey[100],
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          border: showBorder ? border : null,
          borderRadius:
          borderRadius ?? BorderRadius.circular(8),
          color: color ?? Colors.grey[100],
        ),
        child: const Center(
          child:
          CircularProgressIndicator(strokeWidth: 0.2, color: Colors.black),
        ),
      ),
      errorWidget: (context, url, error){
        return Container(
            width: width,
            height: height,
            margin: margin,
            padding: EdgeInsets.all(showLogo?4:0),
            // padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color ?? Colors.grey[100],
              borderRadius:
              borderRadius ?? BorderRadius.circular(100),
              border:  showBorder?Border.all(
                color: Colors.black,
                width: 0.4,
              ):null,
            ),
            child:ClipOval(
              // child: Image.asset(showLogo?Assets.appIcon:Assets.userPlaceHolder,
              child: Image.asset('assets/double-up-arrow.png',
                fit: BoxFit.cover,),
            )
        );
      },
    );
  }
}