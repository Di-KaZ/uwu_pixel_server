import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

Handler middleware(Handler handler) {
  print('yooo');
  return handler.use(requestLogger()).use(
        fromShelfMiddleware(
          shelf.corsHeaders(
            headers: {
              shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*',
              shelf.ACCESS_CONTROL_ALLOW_METHODS:
                  'POST, GET, OPTIONS, PUT, DELETE, HEAD',
              shelf.ACCESS_CONTROL_ALLOW_HEADERS:
                  'custId, appId, Origin, Content-Type, Cookie, X-CSRF-TOKEN, Accept, Authorization, X-XSRF-TOKEN, Access-Control-Allow-Origin',
              shelf.ACCESS_CONTROL_EXPOSE_HEADERS:
                  'Authorization, authenticated',
              shelf.ACCESS_CONTROL_MAX_AGE: '1728000',
              shelf.ACCESS_CONTROL_ALLOW_CREDENTIALS: 'true',
            },
          ),
        ),
      );
}
