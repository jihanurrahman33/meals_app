import 'package:flutter/material.dart';

class CustomFilter extends StatefulWidget {
  const CustomFilter({
    super.key,
    required this.filterset,
    required this.filterText,
    required this.filterSubText,
  });
  final bool filterset;
  final String filterText;
  final String filterSubText;

  @override
  State<CustomFilter> createState() => _CustomFilterState();
}

class _CustomFilterState extends State<CustomFilter> {
  late bool _filterSet;
  late String _filterText;
  late String _filterSubText;
  @override
  void initState() {
    _filterSubText = widget.filterSubText;
    _filterText = widget.filterText;
    _filterSet = widget.filterset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _filterSet,
      onChanged: (isChecked) {
        setState(() {
          _filterSet = isChecked;
        });
      },
      title: Text(
        _filterText,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      subtitle: Text(
        'only include $_filterSubText meals',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(
        left: 34,
        right: 22,
      ),
    );
  }
}
