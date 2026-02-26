import 'package:pn_app/src/features/profile/data/model/user_model.dart';

class ProfileState {
  String errorText;
  UserModel? users;
  ProfileStatus status;
  ProfileState({this.errorText = '', this.users, this.status = ProfileStatus.initial});
}

enum ProfileStatus { initial, loading, loaded, error }
