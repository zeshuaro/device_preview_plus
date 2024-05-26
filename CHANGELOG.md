## [1.2.0](https://github.com/zeshuaro/device_preview_plus/compare/v1.1.0...v1.2.0) (2024-05-26)


### Features

* update to support flutter 3.22 ([#4](https://github.com/zeshuaro/device_preview_plus/issues/4)) ([fded29c](https://github.com/zeshuaro/device_preview_plus/commit/fded29cf8ad4a7f8234c0910f6b9286e1c1747ab))


### Documentation

* **readme:** remove codecov badge ([#8](https://github.com/zeshuaro/device_preview_plus/issues/8)) ([6aa2476](https://github.com/zeshuaro/device_preview_plus/commit/6aa247617cceb2b1d8aa1af16f30e319f91cbddb))
* **readme:** update github actions badge to filter push events ([#7](https://github.com/zeshuaro/device_preview_plus/issues/7)) ([ac62e12](https://github.com/zeshuaro/device_preview_plus/commit/ac62e12c168cc4ef1cacf14fff81005f2dee148c))
* **readme:** update readme ([#9](https://github.com/zeshuaro/device_preview_plus/issues/9)) ([5a863de](https://github.com/zeshuaro/device_preview_plus/commit/5a863de0fe2363ac913446382a4dcfe40851903c))
* **readme:** update readme badges ([#10](https://github.com/zeshuaro/device_preview_plus/issues/10)) ([d21a6f5](https://github.com/zeshuaro/device_preview_plus/commit/d21a6f5031d72764de2af5967d1e9d90d049ca27))


### Miscellaneous Chores

* rename `lib/device_preview` to `device_preview_plus` ([#12](https://github.com/zeshuaro/device_preview_plus/issues/12)) ([59e937e](https://github.com/zeshuaro/device_preview_plus/commit/59e937e6a138ce9eeda6c5382cd144cdda265aef))


### Continuous Integration

* **github-actions:** add pull request and scheduled workflows ([#2](https://github.com/zeshuaro/device_preview_plus/issues/2)) ([621f90a](https://github.com/zeshuaro/device_preview_plus/commit/621f90a33c81ef52b4d09e8461a3dc32f9459d64))
* **github-actions:** fix release condition ([#11](https://github.com/zeshuaro/device_preview_plus/issues/11)) ([4623fd9](https://github.com/zeshuaro/device_preview_plus/commit/4623fd976e72005ac559eeef2fbed8c287d3618b))
* **github-actions:** fix triggering on `main` branch ([#6](https://github.com/zeshuaro/device_preview_plus/issues/6)) ([1037b28](https://github.com/zeshuaro/device_preview_plus/commit/1037b28bdd1e203419b6386a2d1e5de0626a15bd))
* setup semantic release ([#5](https://github.com/zeshuaro/device_preview_plus/issues/5)) ([f9dcf11](https://github.com/zeshuaro/device_preview_plus/commit/f9dcf1173f87e2abbca1d51a7f5dace692322573))

## 1.1.0

* Updated dependencies and adding support for Flutter 3.0.

## 1.0.0-alpha.15

* Updated device_frame which added new android devices and fixed padding.

## 1.0.0-alpha.14

* Missing export of `DeviceScreenshot`.

## 1.0.0-alpha.13

* Added device type section headers
* Improved disabled item icon visibility changes.
* Fixed accesible navigation, invert colors and bold text not available.
* Removed path_drawing dependency.

## 1.0.0-alpha.12

* Updated device_frame which added a new list of devices.

## 1.0.0-alpha.11

* Added section visibility parameters to hide items.

## 1.0.0-alpha.10

* Added conditional import for web, to improve the pub.dev score.

## 1.0.0-alpha.8

* Removed generated files from example.

## 1.0.0-alpha.7

* Fixed `enabled` issue.
* Fixed SVG issue with custom device.

## 1.0.0-alpha.6

* Upgraded `device_frame` dependency.
* Fixed theming issues in small layout.

## 1.0.0-alpha.5

* Added `DevicePreview.selectedDevice` method. 

## 1.0.0-alpha.4

* Added `DevicePreview.availableDeviceIdentifiers` method. 

## 1.0.0-alpha.3

* Upgraded device_frame dependency.

## 1.0.0-alpha.2

* Upgraded provider dependency.

## 1.0.0-alpha.1

* Adaptative layout to make the tool easier to use on mobile.
* Big refactor to make the package more maintainable :
    * Switched all UI components to Material design
    * Removed all include plugins *(available soon as separated packages)*

## 0.8.0

* Removed `DevicePreview.appBuilder` to switch to newer `useInheritedMediaQuery` property instead.

## 0.7.5

* Upgraded dependencies
* Migrated to flutter_lints
* Removed dependency to awesome_fonts

## 0.7.4

* Fixing `basicLocaleListResolution` throwing `imported from multiple packages` conflict error.

## 0.7.3

* Fixing missing part file.

## 0.7.2

* Upgraded dependencies.
* Fixed issue on web with null empty locale list.

## 0.7.1

* Fixed screenshot error.
* Fixed initialization null check.

## 0.7.0

* Null-safety compatibility.
* Upgraded dependencies for Flutter 2.0.

## 0.6.2-beta

* Added Directionality to overlay.

## 0.6.1-beta

* Added styling options to hide toolbar buttons.
* Added a `defaultDevice`.

## 0.6.0-beta

* Support for `MediaQuery.maybeOf` Flutter API breaking change.

## 0.5.5

* Fixed an issue with language picker.

## 0.5.4

* Fixed issue with [DevicePreview.selectDevice] method.

## 0.5.3

* Added the [DevicePreview.selectDevice] method.

## 0.5.2

* Removed Flutter plugin directories.

## 0.5.1

* Fixed linting issues.

## 0.5.0

* Updated documentation

## 0.5.0-prerelease.16

* Fix shared preferences plugin navigation restoration issues.

## 0.5.0-prerelease.15

* Fix styling issues.

## 0.5.0-prerelease.14

* Fix issue when not enabled.

## 0.5.0-prerelease.13

* Fixed several styling issues.
* Fix issue when not enabled.

## 0.5.0-prerelease.12

* Added the plugin system.

## 0.5.0-prerelease.11

* Fixed device screen clip.

## 0.5.0-prerelease.6

* Fixed hidden popovers when not fullscreen.
* Fixed overflow errors.

## 0.5.0-prerelease.5

* Improved loading time.

## 0.5.0-prerelease.4

* Keeping state of application when enabling/disabling preview.

## 0.5.0-prerelease.3

* Custom device selector.

## 0.5.0-prerelease.2

* Added linux devices.

## 0.5.0-prerelease

* New redesigned frames.
* Added enabled switch.
* Removed restart button
* Fixed issues with conflicting global key.
* Minor UI tweaks.

## 0.4.8

- Fixed issues with MaterialLocalization.
- Added copy to clipboard for image links.

## 0.4.7

- Upgraded freezed dependencies.

## 0.4.6

- Add an option to hide device frame shadow.

## 0.4.5

- Removed debug prints.

## 0.4.4

- Removed debug prints.

## 0.4.3

- Added settings window for customizing preview appearance and layout.

## 0.4.2

- Added a virtual keyboard.

## 0.4.1+1

- Fixed an issue with duplicated windows.

## 0.4.1

- Tool bar is bigger.
- Windows background is now semi-transparent.
- Windows can be dragged.

## 0.4.0+1

- Fixed linter issues.

## 0.4.0

- Redesigned UI : now a bottom bar.

## 0.3.0+1

- Removed `flutter_svg` unused dependency.

## 0.3.0

- Changed screenshot processor for a more generic solution.

## 0.2.7

- Update to stable API surface for macOS
- Fix API deprecations

## 0.2.6+1

- Updated documentation.

## 0.2.6

- Removed root navigator to fix dialogs.

## 0.2.5

- Fix settings still visible when `widget.areSettingsEnabled` is `false`.
- Moved example to package folder.

## 0.2.4

- Added optional data to override the loaded one.

## 0.2.3

- Remove `hightContrast` (not on stable yet).

## 0.2.2

- Remove desktop dependencies.

## 0.2.1

- Add throttling for data saving

## 0.2.0

- Add Android devices
- Add locale picker
- Add preferences (dark mode, text scaling factor, ...)
- Saving configuration between sessions.

## 0.1.9-beta

- Initial version
