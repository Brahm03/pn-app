class BookModel {
    List<Datum> data;
    Meta meta;

    BookModel({
        required this.data,
        required this.meta,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class Datum {
    int id;
    String documentId;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    String title;
    String description;
    String pages;
    String author;
    String fileType;
    double rating;
    String language;
    DateTime releasedDate;
    Image image;
    List<Image> file;

    Datum({
        required this.id,
        required this.documentId,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.title,
        required this.description,
        required this.pages,
        required this.author,
        required this.fileType,
        required this.rating,
        required this.language,
        required this.releasedDate,
        required this.image,
        required this.file,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        documentId: json["documentId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        title: json["title"],
        description: json["description"],
        pages: json["pages"],
        author: json["author"],
        fileType: json["file_type"],
        rating: json["rating"]?.toDouble(),
        language: json["language"],
        releasedDate: DateTime.parse(json["released_date"]),
        image: Image.fromJson(json["image"]),
        file: List<Image>.from(json["file"].map((x) => Image.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "documentId": documentId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "title": title,
        "description": description,
        "pages": pages,
        "author": author,
        "file_type": fileType,
        "rating": rating,
        "language": language,
        "released_date": "${releasedDate.year.toString().padLeft(4, '0')}-${releasedDate.month.toString().padLeft(2, '0')}-${releasedDate.day.toString().padLeft(2, '0')}",
        "image": image.toJson(),
        "file": List<dynamic>.from(file.map((x) => x.toJson())),
    };
}

class Image {
    int id;
    String documentId;
    String name;
    String? alternativeText;
    String? caption;
    dynamic focalPoint;
    dynamic width;
    dynamic height;
    dynamic formats;
    String hash;
    String ext;
    String mime;
    double size;
    String url;
    dynamic previewUrl;
    String provider;
    dynamic providerMetadata;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    Image({
        required this.id,
        required this.documentId,
        required this.name,
        required this.alternativeText,
        required this.caption,
        required this.focalPoint,
        required this.width,
        required this.height,
        required this.formats,
        required this.hash,
        required this.ext,
        required this.mime,
        required this.size,
        required this.url,
        required this.previewUrl,
        required this.provider,
        required this.providerMetadata,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        documentId: json["documentId"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        focalPoint: json["focalPoint"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "documentId": documentId,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "focalPoint": focalPoint,
        "width": width,
        "height": height,
        "formats": formats,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
    };
}

class Meta {
    Pagination pagination;

    Meta({
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int page;
    int pageSize;
    int pageCount;
    int total;

    Pagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
    };
}
