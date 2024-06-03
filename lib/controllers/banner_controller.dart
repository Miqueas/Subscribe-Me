import "package:flutter/foundation.dart";
import "package:image_picker/image_picker.dart";
import "package:subscribe_me/models/banner_model.dart";

final class BannerProvider extends ChangeNotifier {
  BannerModel banner;

  BannerProvider(this.banner);

  void selectBanner(ImageSource source) async {
    final file = await ImagePicker().pickImage(source: source);

    if (file != null) {
      banner = banner.copyWith(filePath: file.path);
      notifyListeners();
    }
  }

  void removeBanner() {
    banner = banner.copyWith(filePath: "");
    notifyListeners();
  }
}