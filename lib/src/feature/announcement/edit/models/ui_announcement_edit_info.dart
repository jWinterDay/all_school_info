class UiAnnouncementEditInfo {
  UiAnnouncementEditInfo({
    required this.availableAccessGroups,
    required this.announcementMaxTitleLength,
    required this.announcementMaxContentLength,

    /// `draft`
    required this.draftGroups,
    required this.publishLoading,

    /// `publish`
    required this.publishButtonAvailable,
    required this.publishTop,
  });

  final List<String> availableAccessGroups;
  final int announcementMaxTitleLength;
  final int announcementMaxContentLength;

  /// `draft`
  final Set<String> draftGroups;

  final bool publishTop;
  final bool publishLoading;
  final bool publishButtonAvailable;
}
