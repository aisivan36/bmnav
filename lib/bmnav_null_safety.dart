// Copyright (c) 2018 Edwin Jose. All rights reserved.
// Licensed under the MIT license. See LICENSE file for full information.

import 'package:flutter/material.dart';

const Color defaultColor = Color(0xFF616161);

const Color defaultOnSelectColor = Colors.blue;

class BottomNav extends StatefulWidget {
  final int? index;
  final void Function(int i)? onTap;
  final List<BottomNavItem>? items;
  final double elevation;
  final IconStyle? iconStyle;
  final Color color;
  final LabelStyle? labelStyle;

  const BottomNav({
    Key? key,
    this.index,
    this.onTap,
    this.items,
    this.elevation = 8.0,
    this.iconStyle,
    this.color = Colors.white,
    this.labelStyle,
  })  : assert(items != null && items.length >= 2),
        super(key: key);

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int? currentIndex;
  IconStyle? iconStyle;
  LabelStyle? labelStyle;

  @override
  void initState() {
    currentIndex = widget.index ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    iconStyle = widget.iconStyle ?? const IconStyle();
    labelStyle = widget.labelStyle ?? const LabelStyle();

    return Material(
        elevation: widget.elevation,
        color: widget.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: widget.items!.map((b) {
            final int i = widget.items!.indexOf(b);
            final bool selected = i == currentIndex;

            return BMNavItem(
              icon: b.icon,
              iconSize: selected
                  ? iconStyle?.getSelectedSize()
                  : iconStyle?.getSize(),
              label: parseLabel(b.label!, labelStyle!, selected),
              onTap: () => onItemClick(i),
              textStyle: selected
                  ? labelStyle?.getOnSelectTextStyle()
                  : labelStyle?.getTextStyle(),
              color: selected
                  ? iconStyle?.getSelectedColor()
                  : iconStyle?.getColor(),
            );
          }).toList(),
        ));
  }

  onItemClick(int i) {
    setState(() {
      currentIndex = i;
    });
    if (widget.onTap != null) widget.onTap!(i);
  }

  parseLabel(String label, LabelStyle style, bool selected) {
    if (!style.isVisible()) {
      return null;
    }

    if (style.isShowOnSelect()) {
      return selected ? label : null;
    }

    return label;
  }
}

class BottomNavItem {
  final IconData? icon;
  final String? label;

  const BottomNavItem({this.icon, this.label});
}

class LabelStyle {
  final bool? visible;
  final bool? showOnSelect;
  final TextStyle? textStyle;
  final TextStyle? onSelectTextStyle;

  const LabelStyle(
      {this.visible,
      this.showOnSelect,
      this.textStyle,
      this.onSelectTextStyle});

  bool isVisible() {
    return visible ?? true;
  }

  bool isShowOnSelect() {
    return showOnSelect ?? false;
  }

  // getTextStyle returns `textStyle` with default `fontSize` and
  // `color` values if not provided. if `textStyle` is null then
  // returns default text style
  TextStyle getTextStyle() {
    if (textStyle != null) {
      return TextStyle(
        /// [inherit] If null is false
        inherit: textStyle?.inherit ?? false,
        color: textStyle?.color ?? defaultOnSelectColor,
        fontSize: textStyle?.fontSize ?? 12.0,
        fontWeight: textStyle?.fontWeight,
        fontStyle: textStyle?.fontStyle,
        letterSpacing: textStyle?.letterSpacing,
        wordSpacing: textStyle?.wordSpacing,
        textBaseline: textStyle?.textBaseline,
        height: textStyle?.height,
        locale: textStyle?.locale,
        foreground: textStyle?.foreground,
        background: textStyle?.background,
        decoration: textStyle?.decoration,
        decorationColor: textStyle?.decorationColor,
        decorationStyle: textStyle?.decorationStyle,
        debugLabel: textStyle?.debugLabel,
        fontFamily: textStyle?.fontFamily,
      );
    }
    return const TextStyle(color: defaultColor, fontSize: 12.0);
  }

  // getOnSelectTextStyle returns `onSelectTextStyle` with
  // default `fontSize` and `color` values if not provided. if
  // `onSelectTextStyle` is null then returns default text style
  TextStyle getOnSelectTextStyle() {
    if (onSelectTextStyle != null) {
      return TextStyle(
        /// [inherit] If null, is false
        inherit: onSelectTextStyle?.inherit ?? false,
        color: onSelectTextStyle?.color ?? defaultOnSelectColor,
        fontSize: onSelectTextStyle?.fontSize ?? 12.0,
        fontWeight: onSelectTextStyle?.fontWeight,
        fontStyle: onSelectTextStyle?.fontStyle,
        letterSpacing: onSelectTextStyle?.letterSpacing,
        wordSpacing: onSelectTextStyle?.wordSpacing,
        textBaseline: onSelectTextStyle?.textBaseline,
        height: onSelectTextStyle?.height,
        locale: onSelectTextStyle?.locale,
        foreground: onSelectTextStyle?.foreground,
        background: onSelectTextStyle?.background,
        decoration: onSelectTextStyle?.decoration,
        decorationColor: onSelectTextStyle?.decorationColor,
        decorationStyle: onSelectTextStyle?.decorationStyle,
        debugLabel: onSelectTextStyle?.debugLabel,
        fontFamily: onSelectTextStyle?.fontFamily,
      );
    }
    return const TextStyle(color: defaultOnSelectColor, fontSize: 12.0);
  }
}

class IconStyle {
  final double? size;
  final double? onSelectSize;
  final Color? color;
  final Color? onSelectColor;

  const IconStyle(
      {this.size, this.onSelectSize, this.color, this.onSelectColor});

  double getSize() {
    return size ?? 24.0;
  }

  double getSelectedSize() {
    return onSelectSize ?? 24.0;
  }

  Color getColor() {
    return color ?? defaultColor;
  }

  Color getSelectedColor() {
    return onSelectColor ?? defaultOnSelectColor;
  }
}

class BMNavItem extends StatelessWidget {
  final IconData? icon;
  final double? iconSize;
  final String? label;
  final void Function()? onTap;
  final Color? color;
  final TextStyle? textStyle;

  const BMNavItem({
    Key? key,
    this.icon,
    this.iconSize,
    this.label,
    this.onTap,
    this.color,
    this.textStyle,
  })  : assert(icon != null),
        assert(iconSize != null),
        assert(color != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkResponse(
        key: key,
        child: Padding(
          padding: getPadding(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: iconSize, color: color),
              label != null
                  ? Text(label ?? 'Empty', style: textStyle)
                  : const SizedBox(),
            ],
          ),
        ),
        highlightColor: Theme.of(context).highlightColor,
        splashColor: Theme.of(context).splashColor,
        radius: Material.defaultSplashRadius,
        onTap: () => onTap!(),
      ),
    );
  }

  // getPadding returns the padding after adjusting the top and bottom
  // padding based on the fontsize and iconSize.
  EdgeInsets getPadding() {
    if (label != null) {
      final double p = ((56 - textStyle!.fontSize!) - iconSize!) / 2;
      return EdgeInsets.fromLTRB(0.0, p, 0.0, p);
    }
    return EdgeInsets.fromLTRB(
        0.0, (56 - iconSize!) / 2, 0.0, (56 - iconSize!) / 2);
  }
}
