import 'dart:typed_data';

import 'package:flutter/material.dart';

class DebugInfoWidget extends StatelessWidget {
  const DebugInfoWidget({
    super.key,
    required this.successScans,
    required this.failedScans,
    this.error,
    this.duration = 0,
    this.onReset,
    this.imageBytes,
  });

  final int successScans;
  final int failedScans;
  final String? error;
  final int duration;
  final Uint8List? imageBytes;

  final Function()? onReset;

  @override
  Widget build(BuildContext context) {
    TextStyle? style =
        Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white);
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Success: $successScans', style: style),
                            const SizedBox(width: 10),
                            Text('Failed: $failedScans', style: style),
                            const SizedBox(width: 10),
                            Text('Duration: $duration ms', style: style),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: onReset,
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ),
            ),

            // Image memory for debug image from bytes
            if (imageBytes != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.memory(
                  imageBytes!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
