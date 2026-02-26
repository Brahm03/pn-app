class UserModel {
    int id;
    String documentId;
    String username;
    String email;
    String provider;
    bool confirmed;
    bool blocked;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    UserModel({
        required this.id,
        required this.documentId,
        required this.username,
        required this.email,
        required this.provider,
        required this.confirmed,
        required this.blocked,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        documentId: json["documentId"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "documentId": documentId,
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
    };
}
