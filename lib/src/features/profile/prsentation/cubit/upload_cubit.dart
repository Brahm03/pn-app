import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'upload_state.dart';

class UploadCubit extends Cubit<UploadState> {
  UploadCubit() : super(UploadState(status: UploadStatus.initial));

  Future<void> pickImageFromGallery() async {
    try {
      final result = await ImagePicker().pickMultiImage(limit: 5);
      List<File> temp = state.pickedImages.isEmpty
          ? []
          : List.from(state.pickedImages);

      if (result.isNotEmpty) {
        print('Rasm tanlandi');
        for (var i = 0; i < result.length; i++) {
          temp.add(File(result[i].path));
        }

        if (temp.length > 5) {
          emit(UploadState(status: UploadStatus.error, pickedImages: state.pickedImages));
          return;
        }

        emit(UploadState(status: UploadStatus.loaded, pickedImages: temp));
      }
    } catch (e) {
      emit(UploadState(status: UploadStatus.error));
    }
  }
}
