/// Note: This is called Platforms on nstack-server but differs from [NMeta.platform].
/// We're calling it differently in our project to avoid confusions.
/// See: https://github.com/nstack-io/nstack-server/blob/master/project/Models/Content/Localize/Platforms/Support/Options.php
enum NStackTarget {
  mobile,
  web,
  backend,
}

extension NStackTargetExtensions on NStackTarget {
  String get slug {
    switch (this) {
      case NStackTarget.mobile:
        return 'mobile';
      case NStackTarget.web:
        return 'web';
      case NStackTarget.backend:
        return 'backend';
    }
  }
}
