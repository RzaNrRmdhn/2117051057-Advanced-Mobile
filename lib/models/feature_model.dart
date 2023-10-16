import 'package:flutter/material.dart';

class FeatureModels{
  final String? name;
  final Icon? icon;

  FeatureModels({this.name, this.icon});
}

List feature = [
  FeatureModels(
    name: 'Request',
    icon: const Icon(Icons.call_received),
  ),
  FeatureModels(
    name: 'Send',
    icon: const Icon(Icons.call_made),
  ),
  FeatureModels(
    name: 'Bills',
    icon: const Icon(Icons.receipt_long),
  ),
  FeatureModels(
    name: 'Top Up',
    icon: const Icon(Icons.add),
  ),
  FeatureModels(
    name: 'Withdraw',
    icon: const Icon(Icons.payments),
  ),
  FeatureModels(
    name: 'Games',
    icon: const Icon(Icons.sports_esports),
  ),
  FeatureModels(
    name: 'Split',
    icon: const Icon(Icons.splitscreen)
  ),
  FeatureModels(
    name: 'Mobile',
    icon: const Icon(Icons.smartphone)
  ),
];