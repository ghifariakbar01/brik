import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import 'error_message_widget.dart';

class VAsyncValueWidget<T> extends StatelessWidget {
  const VAsyncValueWidget({required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => Center(
          child: ErrorMessageWidget<T>(
        t: T,
        errorMessage: e.toString(),
      )),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
