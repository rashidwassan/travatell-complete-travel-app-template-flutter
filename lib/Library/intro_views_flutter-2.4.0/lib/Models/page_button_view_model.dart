
import 'package:trevatell_template/Library/intro_views_flutter-2.4.0/lib/Constants/constants.dart';

/// This is view model for the skip and done buttons.

class PageButtonViewModel {
  final double slidePercent;
  final int totalPages;
  final int activePageIndex;
  final SlideDirection slideDirection;

  PageButtonViewModel({
    this.slidePercent,
    this.totalPages,
    this.activePageIndex,
    this.slideDirection,
  });
}
