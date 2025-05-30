// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `src/native_zxing.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class GeneratedBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  GeneratedBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  GeneratedBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// @brief Enables or disables the logging of the library.
  ///
  /// @param enabled Whether to enable or disable the logging.
  void setLogEnabled(
    bool enabled,
  ) {
    return _setLogEnabled(
      enabled,
    );
  }

  late final _setLogEnabledPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Bool)>>('setLogEnabled');
  late final _setLogEnabled =
      _setLogEnabledPtr.asFunction<void Function(bool)>();

  /// Returns the version of the zxing-cpp library. Pointer has a static lifetime and must not be freed.
  ///
  /// @return The version of the zxing-cpp library.
  ffi.Pointer<ffi.Char> version() {
    return _version();
  }

  late final _versionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>('version');
  late final _version =
      _versionPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  /// @brief Read barcode from image bytes.
  /// @param params Barcode parameters. Owned pointer. Will be freed before
  /// function returns.
  /// @return The barcode result.
  CodeResult readBarcode(
    ffi.Pointer<DecodeBarcodeParams> params,
  ) {
    return _readBarcode(
      params,
    );
  }

  late final _readBarcodePtr = _lookup<
      ffi.NativeFunction<
          CodeResult Function(
              ffi.Pointer<DecodeBarcodeParams>)>>('readBarcode');
  late final _readBarcode = _readBarcodePtr
      .asFunction<CodeResult Function(ffi.Pointer<DecodeBarcodeParams>)>();

  /// @brief Read barcodes from image bytes.
  /// @param params Barcode parameters. Owned pointer. Will be freed before
  /// function returns.
  /// @return The barcode results.
  CodeResults readBarcodes(
    ffi.Pointer<DecodeBarcodeParams> params,
  ) {
    return _readBarcodes(
      params,
    );
  }

  late final _readBarcodesPtr = _lookup<
      ffi.NativeFunction<
          CodeResults Function(
              ffi.Pointer<DecodeBarcodeParams>)>>('readBarcodes');
  late final _readBarcodes = _readBarcodesPtr
      .asFunction<CodeResults Function(ffi.Pointer<DecodeBarcodeParams>)>();

  /// @brief Encode a string into a barcode
  /// @param params Encoding parameters. Owned pointer. Will be freed before
  /// function returns.
  /// @return The barcode data
  EncodeResult encodeBarcode(
    ffi.Pointer<EncodeBarcodeParams> params,
  ) {
    return _encodeBarcode(
      params,
    );
  }

  late final _encodeBarcodePtr = _lookup<
      ffi.NativeFunction<
          EncodeResult Function(
              ffi.Pointer<EncodeBarcodeParams>)>>('encodeBarcode');
  late final _encodeBarcode = _encodeBarcodePtr
      .asFunction<EncodeResult Function(ffi.Pointer<EncodeBarcodeParams>)>();
}

/// @brief The BarcodeParams class encapsulates parameters for reading barcodes.
final class DecodeBarcodeParams extends ffi.Struct {
  /// < Image bytes. Owned pointer, freed in destructor.
  external ffi.Pointer<ffi.Uint8> bytes;

  /// < Image format
  @ffi.Int()
  external int imageFormat;

  /// < Specify a set of BarcodeFormats that should be searched for
  @ffi.Int()
  external int format;

  /// < Image width in pixels
  @ffi.Int()
  external int width;

  /// < Image height in pixels
  @ffi.Int()
  external int height;

  /// < Crop left
  @ffi.Int()
  external int cropLeft;

  /// < Crop top
  @ffi.Int()
  external int cropTop;

  /// < Crop width
  @ffi.Int()
  external int cropWidth;

  /// < Crop height
  @ffi.Int()
  external int cropHeight;

  /// < Spend more time to try to find a barcode, optimize for accuracy, not speed
  @ffi.Bool()
  external bool tryHarder;

  /// < Also try detecting code in 90, 180 and 270 degree rotated images
  @ffi.Bool()
  external bool tryRotate;

  /// < Try inverting the image
  @ffi.Bool()
  external bool tryInvert;
}

/// @brief The EncodeBarcodeParams class encapsulates parameters for encoding barcodes.
final class EncodeBarcodeParams extends ffi.Struct {
  /// < The string to encode. Owned pointer, freed in destructor.
  external ffi.Pointer<ffi.Char> contents;

  /// < The width of the barcode in pixels
  @ffi.Int()
  external int width;

  /// < The height of the barcode in pixels
  @ffi.Int()
  external int height;

  /// < The format of the barcode
  @ffi.Int()
  external int format;

  /// < The margin of the barcode
  @ffi.Int()
  external int margin;

  /// < The error correction level of the barcode. Used for Aztec, PDF417, and QRCode only, [0-8].
  @ffi.Int()
  external int eccLevel;
}

/// @brief Pos is a position of a barcode in a image.
final class Pos extends ffi.Struct {
  /// < The width of the image
  @ffi.Int()
  external int imageWidth;

  /// < The height of the image
  @ffi.Int()
  external int imageHeight;

  /// < x coordinate of top left corner of barcode
  @ffi.Int()
  external int topLeftX;

  /// < y coordinate of top left corner of barcode
  @ffi.Int()
  external int topLeftY;

  /// < x coordinate of top right corner of barcode
  @ffi.Int()
  external int topRightX;

  /// < y coordinate of top right corner of barcode
  @ffi.Int()
  external int topRightY;

  /// < x coordinate of bottom left corner of barcode
  @ffi.Int()
  external int bottomLeftX;

  /// < y coordinate of bottom left corner of barcode
  @ffi.Int()
  external int bottomLeftY;

  /// < x coordinate of bottom right corner of barcode
  @ffi.Int()
  external int bottomRightX;

  /// < y coordinate of bottom right corner of barcode
  @ffi.Int()
  external int bottomRightY;
}

/// @brief The CodeResult class encapsulates the result of decoding a barcode within an image.
final class CodeResult extends ffi.Struct {
  /// < The decoded text. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Char> text;

  /// < Whether the barcode was successfully decoded
  @ffi.Bool()
  external bool isValid;

  /// < The error message. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Char> error;

  /// < The bytes is the raw content without any character set conversions. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Uint8> bytes;

  /// < The length of the bytes
  @ffi.Int()
  external int length;

  /// < The format of the barcode
  @ffi.Int()
  external int format;

  /// < The position of the barcode within the image
  external Pos pos;

  /// < Whether the barcode was inverted
  @ffi.Bool()
  external bool isInverted;

  /// < Whether the barcode was mirrored
  @ffi.Bool()
  external bool isMirrored;

  /// < The duration of the decoding in milliseconds
  @ffi.Int()
  external int duration;

  /// < The image bytes. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Uint8> imageBytes;

  /// < The length of the image bytes
  @ffi.Int()
  external int imageLength;

  /// < The width of the image
  @ffi.Int()
  external int imageWidth;

  /// < The height of the image
  @ffi.Int()
  external int imageHeight;
}

/// @brief The CodeResults class encapsulates the result of decoding multiple barcodes within an image.
final class CodeResults extends ffi.Struct {
  /// < The number of barcodes detected
  @ffi.Int()
  external int count;

  /// < The results of the barcode decoding. Owned pointer. Must be freed by Dart code.
  external ffi.Pointer<CodeResult> results;

  /// < The duration of the decoding in milliseconds
  @ffi.Int()
  external int duration;
}

/// @brief EncodeResult encapsulates the result of encoding a barcode.
final class EncodeResult extends ffi.Struct {
  /// < Whether the barcode was successfully encoded
  @ffi.Bool()
  external bool isValid;

  /// < The format of the barcode
  @ffi.Int()
  external int format;

  /// < The encoded data. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Uint8> data;

  /// < The length of the encoded data
  @ffi.Int()
  external int length;

  /// < The error message. Owned pointer. Must be freed by Dart code if not null.
  external ffi.Pointer<ffi.Char> error;
}
