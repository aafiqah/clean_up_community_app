# clean_up_community_app

----
![Logo](/assets/images/thumbnail.png)

----
# Reference
- [Figma]
----
# Feature
- A map view displaying upcoming beach cleanup events.
- Filter options (e.g., date, location, type of event).
- Details for each event, including time, location, and organizer information.
----
# Testing

This project includes both **integration tests** and **Patrol tests** to ensure reliability across core flows and platforms.

#### ✅ Integration Tests

Integration tests verify critical UI interactions and logic such as login/signup, event listing, filtering, and navigation.

To run the integration tests via terminal:

```bash
flutter test integration_test/app_test.dart
```

#### ✅ Patrol Tests

Patrol tests enable full end-to-end UI automation and native-level testing (e.g., tapping system dialogs, using location/GPS).

Make sure you have Patrol CLI installed:

```bash
dart pub global activate patrol_cli
```

To run Patrol tests:

```bash
patrol test --target integration_test/integrationtest_patrol.dart
```

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)
    
   [Figma]: <https://www.figma.com/community/file/1310540442867602574/cleanup-community-app>