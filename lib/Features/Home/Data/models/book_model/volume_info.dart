import 'package:equatable/equatable.dart';
import 'package:project/Features/Home/Data/models/book_model/dimensions.dart';
import 'package:project/Features/Home/Data/models/book_model/image_links.dart';
import 'package:project/Features/Home/Data/models/book_model/panelization_summary.dart';
import 'package:project/Features/Home/Data/models/book_model/reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final ReadingModes? readingModes;
  final int? pageCount;
  final int? printedPageCount;
  final Dimensions? dimensions;
  final String? printType;
  final num? averageRating; 
  final int? ratingsCount; 
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.readingModes,
    this.pageCount,
    this.printedPageCount,
    this.dimensions,
    this.printType,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json['title'] as String?,
    authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
    publisher: json['publisher'] as String?,
    publishedDate: json['publishedDate'] as String?,
    readingModes: json['readingModes'] == null
        ? null
        : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
    pageCount: json['pageCount'] as int?,
    printedPageCount: json['printedPageCount'] as int?,
    dimensions: json['dimensions'] == null
        ? null
        : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
    printType: json['printType'] as String?,
    averageRating: json['averageRating'] as num?,
    ratingsCount: json['ratingsCount'] as int?,
    maturityRating: json['maturityRating'] as String?,
    allowAnonLogging: json['allowAnonLogging'] as bool?,
    contentVersion: json['contentVersion'] as String?,
    panelizationSummary: json['panelizationSummary'] == null
        ? null
        : PanelizationSummary.fromJson(
            json['panelizationSummary'] as Map<String, dynamic>,
          ),
    imageLinks: json['imageLinks'] == null
        ? null
        : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    language: json['language'] as String?,
    previewLink: json['previewLink'] as String?,
    infoLink: json['infoLink'] as String?,
    canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'authors': authors,
    'publisher': publisher,
    'publishedDate': publishedDate,
    'readingModes': readingModes?.toJson(),
    'pageCount': pageCount,
    'printedPageCount': printedPageCount,
    'dimensions': dimensions?.toJson(),
    'printType': printType,
    'averageRating': averageRating,
    'ratingsCount': ratingsCount,
    'maturityRating': maturityRating,
    'allowAnonLogging': allowAnonLogging,
    'contentVersion': contentVersion,
    'panelizationSummary': panelizationSummary?.toJson(),
    'imageLinks': imageLinks?.toJson(),
    'language': language,
    'previewLink': previewLink,
    'infoLink': infoLink,
    'canonicalVolumeLink': canonicalVolumeLink,
  };

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publisher,
      publishedDate,
      readingModes,
      pageCount,
      printedPageCount,
      dimensions,
      printType,
      averageRating,
      ratingsCount,
      maturityRating,
      allowAnonLogging,
      contentVersion,
      panelizationSummary,
      imageLinks,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
    ];
  }
}