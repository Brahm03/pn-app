part of 'upload_cubit.dart';

class UploadState {
  UploadStatus status;
  List<File> pickedImages;
  UploadState({
    this.status = UploadStatus.initial,
    this.pickedImages = const [],
  });
}

// * enum status
enum UploadStatus { initial, loading, error, loaded }
