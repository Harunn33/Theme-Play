import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:theme_play/data/local/image_picker/image_picker_service.dart';
import 'package:theme_play/data/models/user_theme/index.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/storage/storage_repository.dart';
import 'package:theme_play/data/network/repository/user_themes/index.dart';
import 'package:theme_play/modules/edit_theme/edit_theme_controller.dart';
import 'package:theme_play/modules/edit_theme/enums/editable_widget_type.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/enums/bucket_name.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

extension EditableWidgetTypeExt on EditableWidgetType {
  static final RxList<XFile> _imagePaths = <XFile>[].obs;

  Future<void> removeImages(XFile image) async {
    _imagePaths.remove(image);
    final storageRepository = StorageRepository.instance;
    LoadingStatus.loading.showLoadingDialog();
    await storageRepository.removeImage(
      imagePaths: [extractFilePath(image.path)],
      bucketName: BucketName.userThemesSliderImages,
    );
    LoadingStatus.loaded.showLoadingDialog();
  }

  Widget getBottomSheetByEditableWidgetType({
    required final UserThemeModel userThemeModel,
  }) {
    const ConstantsInstances constants = ConstantsInstances.instance;
    switch (this) {
      case EditableWidgetType.name:
        final nameController = TextEditingController(
          text: userThemeModel.name,
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              textEditingController: nameController,
              labelText: constants.strings.themeName.tr,
            ),
            12.verticalSpace,
            CustomPrimaryButton(
              onTap: () async {
                final userTheme = userThemeModel.copyWith(
                  name: nameController.text,
                );
                _onTapSaveButtonFromTextType(
                  userThemeModel: userTheme,
                );
              },
              text: constants.strings.save.tr,
            ),
          ],
        );
      case EditableWidgetType.title:
        final titleController = TextEditingController(
          text: userThemeModel.style.title,
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              maxLines: 2,
              textEditingController: titleController,
              labelText: constants.strings.title.tr,
            ),
            12.verticalSpace,
            CustomPrimaryButton(
              onTap: () async {
                final userTheme = userThemeModel.copyWith(
                  style: userThemeModel.style.copyWith(
                    title: titleController.text,
                  ),
                );
                _onTapSaveButtonFromTextType(
                  userThemeModel: userTheme,
                );
              },
              text: constants.strings.save.tr,
            ),
          ],
        );
      case EditableWidgetType.subtitle:
        final subtitleController = TextEditingController(
          text: userThemeModel.style.subtitle,
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              maxLines: 5,
              textEditingController: subtitleController,
              labelText: constants.strings.subtitle.tr,
            ),
            12.verticalSpace,
            CustomPrimaryButton(
              onTap: () async {
                final userTheme = userThemeModel.copyWith(
                  style: userThemeModel.style.copyWith(
                    subtitle: subtitleController.text,
                  ),
                );
                _onTapSaveButtonFromTextType(
                  userThemeModel: userTheme,
                );
              },
              text: constants.strings.save.tr,
            ),
          ],
        );
      case EditableWidgetType.mainMessage:
        final mainMessageController = TextEditingController(
          text: userThemeModel.style.mainMessage,
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            12.verticalSpace,
            CustomTextFormField(
              maxLines: 10,
              textEditingController: mainMessageController,
              labelText: constants.strings.mainMessage.tr,
            ),
            12.verticalSpace,
            CustomPrimaryButton(
              onTap: () async {
                final userTheme = userThemeModel.copyWith(
                  style: userThemeModel.style.copyWith(
                    mainMessage: mainMessageController.text,
                  ),
                );
                _onTapSaveButtonFromTextType(
                  userThemeModel: userTheme,
                );
              },
              text: constants.strings.save.tr,
            ),
            12.verticalSpace,
          ],
        );
      case EditableWidgetType.headerSlider:
        _imagePaths.clear();
        for (var image in userThemeModel.style.sliderStyle.images) {
          _imagePaths.add(XFile(image));
        }
        return Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              12.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ..._imagePaths.map(
                      (image) {
                        return Badge(
                          largeSize: 21.sp,
                          backgroundColor: constants.colors.error,
                          label: Bounceable(
                            onTap: () => removeImages(image),
                            child: Icon(
                              Icons.close,
                              color: constants.colors.white,
                              size: 14.sp,
                            ),
                          ),
                          offset: const Offset(-8, 0),
                          child: Padding(
                            padding: 8.padRight,
                            child: ClipRRect(
                              borderRadius: 8.radiusAll,
                              child: image.path.contains("https://")
                                  ? CustomCachedNetworkImage(
                                      url: image.path,
                                      width: 100.w,
                                      height: 100.h,
                                      shape: BoxShape.rectangle,
                                      fit: BoxFit.fill,
                                    )
                                  : SizedBox(
                                      height: 100.h,
                                      width: 100.w,
                                      child: Image.file(
                                        File(image.path),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: constants.colors.orochimaru,
                        borderRadius: 8.radiusAll,
                      ),
                      child: IconButton(
                        onPressed: pickSliderImage,
                        icon: const Icon(Icons.add_a_photo),
                      ),
                    ),
                  ],
                ),
              ),
              12.verticalSpace,
              CustomPrimaryButton(
                onTap: () async {
                  final userThemesRepository = UserThemesRepository.instance;

                  final uploadedImages =
                      await userThemesRepository.uploadUserThemeSliderImages(
                    themeId: userThemeModel.id ?? "",
                    images: _imagePaths,
                  );
                  final userTheme = userThemeModel.copyWith(
                    style: userThemeModel.style.copyWith(
                      sliderStyle: userThemeModel.style.sliderStyle.copyWith(
                        images: uploadedImages.isEmpty
                            ? _imagePaths.map((image) => image.path).toList()
                            : [
                                ...uploadedImages.map((url) => url),
                              ],
                      ),
                    ),
                  );
                  _onTapSaveButtonFromTextType(
                    userThemeModel: userTheme,
                  );
                  Get.back();
                },
                text: constants.strings.save.tr,
              ),
              12.verticalSpace,
            ],
          ),
        );
      default:
    }
    return const SizedBox.shrink();
  }

  Future<void> _onTapSaveButtonFromTextType({
    required final UserThemeModel userThemeModel,
  }) async {
    final editThemeController = Get.find<EditThemeController>();
    editThemeController.userThemeModel.value = userThemeModel;
    await editThemeController.editUserTheme();
    Get.back();
  }

  void pickSliderImage() {
    final List<String> imageExtensions = <String>['jpg', 'jpeg', 'png'];
    final imagePickerService = ImagePickerService.instance;
    imagePickerService.pickMultiImages().then((imageList) {
      if (imageList.isEmpty) return;
      for (var image in imageList) {
        final String extension = image.path.split('.').last;
        if (imageExtensions.contains(extension)) {
          _imagePaths.add(image);
          continue;
        }
        Get.snackbar(
          'Error',
          'Please select a valid image',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
      print("Image paths: $_imagePaths");
    });
  }

  String extractFilePath(String url) {
    final uri = Uri.parse(url);
    final fullPath = uri.path;

    String filePath = fullPath.replaceFirst(
        '/storage/v1/object/public/user_themes_slider_images/', '');

    if (filePath.contains('?')) {
      filePath = filePath.split('?')[0];
    }

    return filePath;
  }
}
