library user_mod;

import 'package:pritunl/model.dart' as model;

import 'package:angular/angular.dart' show Injectable;
import 'package:angular/angular.dart' as ng;

@Injectable()
class User extends model.Model {
  @model.Attribute('id')
  String id;

  @model.Attribute('organization')
  String organization;

  @model.Attribute('organization_name')
  String organizationName;

  @model.Attribute('name')
  String name;

  @model.Attribute('email')
  String email;

  @model.Attribute('type')
  String type;

  @model.Attribute('otp_auth')
  bool otpAuth;

  @model.Attribute('otp_secret')
  String otpSecret;

  @model.Attribute('disabled')
  bool disabled;

  @model.Attribute('servers')
  List<Map> servers;

  @model.Attribute('status')
  bool status;

  String get url {
    return '/user/${this.organization}/${this.id}';
  }

  User(ng.Http http) : super(http);
}
