import 'package:bolisati/infrastructure/retirment/retirment.repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/api/retirment/contracts/i.retirment.repository.dart';

final retirmentrepoprovider =
    Provider<IRetirmentRepository>((ref) => RetirmentRepository());