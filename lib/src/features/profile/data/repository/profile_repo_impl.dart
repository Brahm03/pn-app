// import 'package:pn_app/src/core/either/either.dart';

// import '../../../../core/failure/failures.dart';

// class ProfileRepoImpl extends ProfileRepository {
//   final PrfoileDataSource prfoileDataSource;
//   ProfileRepoImpl({required this.prfoileDataSource});

//   @override
//   Future<Either<Failure, void>> updateProfile({
//     required Map<String, dynamic> userInfo,

//   }) async {
//     try {
//       final result = await prfoileDataSource.updateProfile(userInfo: userInfo);
//       if (result.isRight) {
//         return Right('');
//       } else {
//         throw Exception();
//       }
//     } catch (e) {
//       return Left(Failure());
//     }
//   }
// }
