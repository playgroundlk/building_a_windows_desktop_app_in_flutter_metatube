import 'package:flutter/material.dart';

class AppTheme {

  // https://m3.material.io/styles/color/roles

  // Primary – High-emphasis fills, texts, and icons against surface
  static const Color primary = Color(0xFF1E1E1E);

  // On primary – Text and icons against primary
  static const Color onPrimary = Color(0xFF1E1E1E);

  // Primary container – Standout fill color against surface, for key components like FAB
  static const Color primaryContainer = Color(0xFF1E1E1E);

  // On primary container – Text and icons against primary container
  static const Color onPrimaryContainer = Color(0xFF1E1E1E);

// Secondary – Less prominent fills, text, and icons against surface
  static const Color secondary = Color(0xFF1E1E1E);

// On secondary – Text and icons against secondary
  static const Color onSecondary = Color(0xFF1E1E1E);

// Secondary container – Less prominent fill color against surface, for recessive components like tonal buttons
  static const Color secondaryContainer = Color(0xFF1E1E1E);

// On secondary container – Text and icons against secondary container
  static const Color onSecondaryContainer = Color(0xFF1E1E1E);

// Tertiary – Complementary fills, text, and icons against surface
  static const Color tertiary = Color(0xFF1E1E1E);

// On tertiary – Text and icons against tertiary
  static const Color onTertiary = Color(0xFF1E1E1E);

// Tertiary container – Complementary container color against surface, for components like input fields
  static const Color tertiaryContainer = Color(0xFF1E1E1E);

// On tertiary container – Text and icons against tertiary container
  static const Color onTertiaryContainer = Color(0xFF1E1E1E);

// Error – Attention-grabbing color against surface for fills, icons, and text, indicating urgency

// On error – Text and icons against error

// Error container – Attention-grabbing fill color against surface

// On error container – Text and icons against error container

// Surface – Default color for backgrounds

// On surface – Text and icons against any surface color

// On surface variant – Lower-emphasis color for text and icons against any surface color

// Surface container lowest – Lowest-emphasis container color

// Surface container low – Low-emphasis container color

// Surface container – Default container color

// Surface container high – High-emphasis container color

// Surface container highest – Highest-emphasis container color

// Outline – Important boundaries, such as a text field outline

// Outline variant – Decorative elements, such as dividers

  static const Color primaryColor = Color(0xFF1E1E1E);
  static const Color onPrimaryColor = Color(0x50FFFFFF);
  static const Color accentColor = Color(0xFFFFA500);
  // static const Color whiteColor = Color(0xFFFFFFFF);

  static const TextStyle textFieldStyle = TextStyle(
    fontSize: 24,
    color: Color(0xFFFFFFFF),
  );

  static const TextStyle textFieldHintStyle = TextStyle(
    fontSize: 24,
    color: onPrimaryColor,
  );
  static const TextStyle textFieldCounterStyle = TextStyle(
    fontSize: 12,
    color: onPrimaryColor,
  );
}
