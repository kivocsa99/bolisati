import 'package:bolisati/domain/api/educational/contracts/i.educational.repository.dart';
import 'package:bolisati/infrastructure/educational/educational.repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final educationalrepoprovider =
    Provider<IEducationalRepository>((ref) => EducationalRepository());
