import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';

class SubscriptionState extends Equatable {
  final String? errorText;
  final SubscriptionStatus status;
  final double price;
  const SubscriptionState({
    required this.price,
    this.errorText,
    this.status = SubscriptionStatus.initial,
  });

  @override
  List<Object?> get props => [price, errorText, status];
}

enum SubscriptionStatus { initial, loading, loaded, error }
