import 'package:flutter/material.dart';

import '../../models/option.dart';

///
class SeparatedListTile extends StatelessWidget {
  ///
  const SeparatedListTile({required this.options});

  ///
  final List<Option> options;

  static const _iconSize = 18.0;

  @override
  Widget build(final BuildContext context) => ListView.separated(
        itemCount: options.length,
        separatorBuilder: (final _, final __) => Divider(
          color: Theme.of(context).colorScheme.primary,
        ),
        itemBuilder: (final _, final index) {
          final option = options[index];

          return ListTile(
            dense: true,
            title: Text(
              option.title,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: _iconSize,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: option.onTap ??
                () async => Navigator.of(context).push(
                      MaterialPageRoute<PageRoute<void>>(
                        builder: (final context) =>
                            option.child ?? const SizedBox(),
                      ),
                    ),
          );
        },
      );
}
