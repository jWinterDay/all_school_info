class UiAnnouncementEditInfo {
  UiAnnouncementEditInfo({
    required this.availableAccessGroups,
    required this.announcementMaxTitleLength,
    required this.announcementMaxContentLength,

    // draft
    required this.draftGroups,
  });

  final List<String> availableAccessGroups;
  final int announcementMaxTitleLength;
  final int announcementMaxContentLength;

  final Set<String> draftGroups;
}
