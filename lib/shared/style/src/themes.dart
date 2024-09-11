part of style;

mixin Themes {
  static void initUiOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
    ));
  }

  static TextStyle font(
    double fontSize, {
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static OutlineInputBorder notFocused() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Palette.greyStroke));
  }

  static OutlineInputBorder focused() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Palette.primaryColor));
  }

  static InputDecoration formStyle(String hintText,
      {Widget? icon, Color? textColor}) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: icon ?? null,
      border: InputBorder.none,
      focusedBorder: Themes.focused(),
      enabledBorder: Themes.notFocused(),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      hintStyle: Themes.font(
        14,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      labelStyle: Themes.font(
        14,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
    );
  }

  static InputDecoration formStyleBordered(String labelText,
      {Color? borderColor, Widget? icon, double? fontSize}) {
    return InputDecoration(
      labelText: labelText,
      suffixIcon: icon ?? null,
      contentPadding: const EdgeInsets.all(16),
      hintStyle: Themes.font(14, color: Palette.primaryColor),
      labelStyle: Themes.font(
        fontSize ?? 14,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: Themes.focused(),
      focusedBorder: Themes.focused(),
      enabledBorder: Themes.focused(),
    );
  }

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        disabledColor: Colors.black.withOpacity(0.15));
  }
}
