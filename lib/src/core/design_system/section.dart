import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';

typedef SectionContentBuilder = Widget Function(
  BuildContext context,
  EdgeInsets padding,
);

@Freezed()
class Section with _$Section {
  const factory Section({
    required SectionHeader header,
    required SectionContentBuilder contentBuilder,
  }) = _Section;
}

@Freezed()
class SectionHeader with _$SectionHeader {
  const factory SectionHeader({
    required String title,
    required Iterable<Widget> actions,
  }) = _SectionHeader;
}

enum _SectionPosition { single, first, middle, last }

final class SectionsView extends StatelessWidget {
  SectionsView({super.key, required this.sections})
      : assert(sections.isNotEmpty);

  final Iterable<Section> sections;

  @override
  Widget build(BuildContext context) {
    if (sections.length == 1) {
      return _SectionView(
        position: _SectionPosition.single,
        section: sections.single,
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: sections.mapIndexed((index, section) {
        return _SectionView(
          position: _mapIndexToPosition(index),
          section: section,
        );
      }).toList(),
    );
  }

  _SectionPosition _mapIndexToPosition(int index) {
    final _SectionPosition position;

    if (index == 0) {
      position = _SectionPosition.first;
    } else if (index == sections.length - 1) {
      position = _SectionPosition.last;
    } else {
      position = _SectionPosition.middle;
    }

    return position;
  }
}

final class _SectionView extends StatelessWidget {
  const _SectionView({required this.section, required this.position});

  final Section section;
  final _SectionPosition position;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: _HeaderTokens.eHeaderEdgeInsets(),
          child: _SectionHeaderView(header: section.header),
        ),
        section.contentBuilder(context, _computeContentEdgeInsets()),
      ],
    );
  }
}

final class _SectionHeaderView extends StatelessWidget {
  const _SectionHeaderView({
    required this.header,
  });

  final SectionHeader header;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(header.title),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: header.actions.mapIndexed((index, action) {
            if (index == 0) return action;

            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: action,
            );
          }).toList(),
        ),
      ],
    );
  }
}

final class _HeaderTokens {
  const _HeaderTokens._();

  EdgeInsets getEdgeInsets({required _SectionPosition position}) {
    return switch (position) {
      _SectionPosition.single =>
        _SectionSpacingTokens.singleSectionHeaderPadding,
      _SectionPosition.first => _SectionSpacingTokens.firstSectionHeaderPadding,
      _SectionPosition.middle =>
        _SectionSpacingTokens.middleSectionHeaderPadding,
      _SectionPosition.last => _SectionSpacingTokens.lastSectionHeaderPadding,
    };
  }
}

final class _ContentTokens {
  const _ContentTokens._();

  static EdgeInsets getEdgeInsets({required _SectionPosition position}) {
    return switch (position) {
      _SectionPosition.single =>
        _SectionSpacingTokens.singleSectionContentPadding,
      _SectionPosition.first =>
        _SectionSpacingTokens.firstSectionContentPadding,
      _SectionPosition.middle =>
        _SectionSpacingTokens.middleSectionContentPadding,
      _SectionPosition.last => _SectionSpacingTokens.lastSectionContentPadding,
    };
  }
}

final class _ScreenSpacingTokens {
  const _ScreenSpacingTokens._();

  static const EdgeInsets screenEdgeInsets = EdgeInsets.fromLTRB(16, 32, 16, 16);
}

final class _SectionSpacingTokens {
  const _SectionSpacingTokens._();

  static final EdgeInsets singleSectionHeaderPadding = _ScreenSpacingTokens.screenEdgeInsets.copyWith(bottom: 0);
  static final EdgeInsets singleSectionContentPadding = singleSectionHeaderPadding.copyWith(top: 8, bottom: _ScreenSpacingTokens.screenEdgeInsets.bottom);

  static final EdgeInsets firstSectionHeaderPadding = singleSectionHeaderPadding;
  static final EdgeInsets firstSectionContentPadding = singleSectionContentPadding.copyWith(bottom: singleSectionContentPadding.bottom / 2);

  static final EdgeInsets middleSectionHeaderPadding = firstSectionHeaderPadding.copyWith(top: firstSectionContentPadding.bottom);
  static final EdgeInsets middleSectionContentPadding = firstSectionContentPadding;

  static final EdgeInsets lastSectionHeaderPadding = middleSectionHeaderPadding;
  static final EdgeInsets lastSectionContentPadding = singleSectionContentPadding;
}
