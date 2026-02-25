class ProfileState {
  ProfileStatus status;
  ProfileState({this.status = ProfileStatus.initial});
}

enum ProfileStatus { initial, loading, loaded, error }
