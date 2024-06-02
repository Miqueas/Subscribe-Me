import "package:image_picker/image_picker.dart";
import "package:subscribe_me/models/banner.dart";

final class BannerController {
  final picker = ImagePicker();
  var banner = const Banner(filePath: "");

  Future<void> selectBanner() async {
    final file = await picker.pickImage(source: ImageSource.gallery);
    banner = banner.copyWith(filePath: file!.path);
  }
}