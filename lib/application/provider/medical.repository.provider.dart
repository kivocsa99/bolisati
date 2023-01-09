import 'package:bolisati/domain/api/medical/contracts/i.medical.repository.dart';
import 'package:bolisati/infrastructure/medical/medical.repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


final medicalrepoProvider =
    Provider<IMedicalRepository>((ref) => MedicalRepository());


