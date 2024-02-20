import 'package:homyyy/features/user/user_repository.dart';
import 'package:shared/services/notifications/services/push_notifications_service.dart';

class StartService {
  const StartService({
    required UserRepository couriersRepository,
    required PushNotificationsService pushNotificationsService,
  })  : _couriersRepository = couriersRepository,
        _pushNotificationsService = pushNotificationsService;

  final UserRepository _couriersRepository;
  final PushNotificationsService _pushNotificationsService;

  Future<void> init() async {
    final token = await _pushNotificationsService.token;
    if (token != null) {
      await _couriersRepository.updateFcmToken(token);
    }
  }
}
