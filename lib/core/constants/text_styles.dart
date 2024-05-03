import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle regular = TextStyle(
    fontFamily: 'AxiformaRegular',
    height: 1,
  );
  static const TextStyle bold = TextStyle(
    fontFamily: 'AxiformaBold',
    height: 1,
  );
  static const TextStyle heavy = TextStyle(
    fontFamily: 'AxiformaHeavy',
    height: 1,
  );
  static const TextStyle light = TextStyle(
    fontFamily: 'AxiformaLight',
    height: 1,
  );
  static const TextStyle medium = TextStyle(
    fontFamily: 'AxiformaMedium',
    height: 1,
  );
  static const TextStyle semiBold = TextStyle(
    fontFamily: 'AxiformaSemiBold',
    height: 1,
  );
  static const TextStyle thin = TextStyle(
    fontFamily: 'AxiformaThin',
    height: 1,
  );

  // Naming convention: [fontFamily]_[fontSize]_[color]_[fontWeight]

  static final TextStyle medium10grey66 = medium.copyWith(
    fontSize: 10,
    color: const Color(0xFF666666),
  );
   static final TextStyle medium10grey77 = medium.copyWith(
    fontSize: 10,
    color: const Color(0xFF777777),
  );

  static final TextStyle medium11grey66 = medium.copyWith(
    fontSize: 11,
    color: Color.fromARGB(255, 174, 173, 173),
  );

  static final TextStyle medium11grey77 = medium.copyWith(
    fontSize: 11,
    color: const Color(0xFF777777),
  );

  static final TextStyle medium11black24 = medium.copyWith(
    fontSize: 11,
    color: const Color(0xFF242424),
  );

  static final TextStyle medium11black00 = medium.copyWith(
    fontSize: 11,
    color: const Color(0xFF000000),
  );

  static final TextStyle medium12grey77 = medium.copyWith(
    fontSize: 11,
    color: const Color(0xFF777777),
  );

  static final TextStyle medium12grey66 = medium.copyWith(
    fontSize: 12,
    color: const Color(0xFF666666),
  );

  static final TextStyle medium14black3B = medium.copyWith(
    fontSize: 14,
    color: const Color(0xFF1E293B),
  );

  static final TextStyle semiBold12black24 = semiBold.copyWith(
    fontSize: 12,
    color: const Color(0xFF242424),
  );

  static final TextStyle semiBold14whiteFF = semiBold.copyWith(
    fontSize: 14,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle semibold16grey77 = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFF777777),
  );
  static final TextStyle semibold16purple96 = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFFC83E96),
  );

  static final TextStyle regular10whiteFF = regular.copyWith(
    fontSize: 10,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle medium15black3B = medium.copyWith(
    fontSize: 15,
    color: const Color(0xFF1E293B),
  );
  static final TextStyle medium13black3B = medium.copyWith(
    fontSize: 13,
    color: const Color(0xFF1E293B),
  );

  static final TextStyle regular16grey77 = regular.copyWith(
    fontSize: 16,
    color: const Color(0xFF777777),
  );
  static final TextStyle regular14grey66 = regular.copyWith(
    fontSize: 14,
    color: const Color(0xFF666666),
  );
  static final TextStyle bold16purple24 = bold.copyWith(
    fontSize: 16,
    color: const Color(0xFFB73A8E),
  );
  static final TextStyle regular16black24 = regular.copyWith(
    fontSize: 16,
    color: const Color(0xFF242424),
  );

  static final TextStyle semibold16whiteFF = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  );
  static final TextStyle medium16grey66 = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFF666666),
  );
  static final TextStyle medium16black3B = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFF1E293B),
  );

  static final TextStyle medium16black3BunderLined = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFF1E293B),
    decoration: TextDecoration.underline,
  );

  static final TextStyle semibold16black1A = semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xFF1A1A1A),
  );
  static final TextStyle semibold20grey77 = semiBold.copyWith(
    fontSize: 20,
    color: const Color(0xFF777777),
  );

  static final TextStyle semiBold20whiteFF = semiBold.copyWith(
    fontSize: 20,
    height: 1,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold24black24 = bold.copyWith(
    fontSize: 24,
    color: const Color(0xFF242424),
  );
  static final TextStyle bold20black24 = bold.copyWith(
    fontSize: 20,
    height: 1,
    color: const Color(0xFF242424),
  );
  static final TextStyle medium14grey77 = medium.copyWith(
    fontSize: 14,
    color: const Color(0xFF777777),
  );

  static final TextStyle medium14grey66 = medium.copyWith(
    fontSize: 14,
    color: const Color(0xFF666666),
  );

  static final TextStyle bold16pink8E = bold.copyWith(
    fontSize: 16,
    color: const Color(0xFFB73A8E),
  );

  static final TextStyle bold16pink96 = bold.copyWith(
    fontSize: 16,
    color: const Color(0xFFC83E96),
  );

  static final TextStyle bold17black24 = bold.copyWith(
    fontSize: 17,
    height: 1,
    color: const Color(0xFF242424),
  );

  static final TextStyle bold11black24 = bold.copyWith(
    fontSize: 11,
    color: const Color(0xFF242424),
  );
}
