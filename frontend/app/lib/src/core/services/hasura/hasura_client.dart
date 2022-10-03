import 'package:artemis/artemis.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/services/hasura/http_client_with_dynamic_custom_headers.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';

final hasuraClientProvider = Provider((ref) {
  final nhost = ref.read(nhostProvider);

  final httpClient = HttpClientWithDynamicCustomHeaders(() async {
    return {'Authorization': 'Bearer ${nhost.auth.accessToken}'};
  });

  return ArtemisClient(
    '${nhost.backendUrl}v1/graphql/',
    httpClient: httpClient,
  );
});
