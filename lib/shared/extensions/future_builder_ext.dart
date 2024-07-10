import 'package:flutter/material.dart';

class CustomFutureBuilder<T> {
  CustomFutureBuilder(Future<T> future) : _future = future;
  final Future<T> _future;

  Widget toBuild({
    required Widget Function(T? data) onSuccess,
    final Widget? loadingWidget,
    final Widget? notFoundWidget,
    final Widget? emptyWidget,
    final Widget? onError,
    final T? data,
  }) =>
      FutureBuilder<T>(
        future: _future,
        initialData: data,
        builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
          final result = switch (snapshot.connectionState) {
            ConnectionState.waiting ||
            ConnectionState.active =>
              loadingWidget ?? _defaultLoadingWidget,
            ConnectionState.done => snapshot.hasData
                ? snapshot.data is List
                    ? (snapshot.data! as List).isEmpty
                        ? emptyWidget ?? _defaultEmptyWidget
                        : onSuccess(snapshot.data)
                    : onSuccess(snapshot.data)
                : onError ?? _defaultErrorWidget,
            _ => notFoundWidget ?? _defaultNotFoundWidget,
          };
          return result;
        },
      );

  Widget get _defaultLoadingWidget =>
      const Center(child: CircularProgressIndicator());
  Widget get _defaultNotFoundWidget => const Center(child: Text('Not Found'));
  Widget get _defaultErrorWidget => const Center(child: Text('Error'));
  Widget get _defaultEmptyWidget =>
      const Center(child: Text('No Result Found'));
}

extension FutureExt<T> on Future<T> {
  CustomFutureBuilder<T> get getData => CustomFutureBuilder(this);
}
