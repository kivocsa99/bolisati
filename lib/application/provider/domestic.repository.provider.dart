import 'package:bolisati/domain/api/domestic/contracts/i.domestic.repository.dart';
import 'package:bolisati/infrastructure/domistec/domestic.repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final domesticrepoProvider =
    Provider<IDomesticRepository>((ref) => DomesticRepository());


