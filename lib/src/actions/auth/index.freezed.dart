// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

// ignore: unused_element
  SignUp$ call(void Function(AppAction) response) {
    return SignUp$(
      response,
    );
  }

// ignore: unused_element
  SignUpSuccessful successful(AppUser user) {
    return SignUpSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignUpError error(Object error) {
    return SignUpError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) =
      _$SignUp$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then)
      : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(SignUp$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUp(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $SignUp$CopyWith<SignUp$> get copyWith =>
      _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp {
  const factory SignUp$(void Function(AppAction) response) = _$SignUp$;

  void Function(AppAction) get response;
  $SignUp$CopyWith<SignUp$> get copyWith;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(
          SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(
      SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(AppUser user) = _$SignUpSuccessful;

  AppUser get user;
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ErrorAction {
  const factory SignUpError(Object error) = _$SignUpError;

  Object get error;
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

// ignore: unused_element
  UpdateRegistrationInfo$ call(
      {String email, String password, String username}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String get email;
  String get password;
  String get username;

  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call({String email, String password, String username});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String username});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$({this.email, this.password, this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String email,
      String password,
      String username}) = _$UpdateRegistrationInfo$;

  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith;
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

// ignore: unused_element
  SignOut$ call() {
    return const SignOut$();
  }

// ignore: unused_element
  SignOutSuccessful successful() {
    return const SignOutSuccessful();
  }

// ignore: unused_element
  SignOutError error(Object error) {
    return SignOutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class $SignOut$CopyWith<$Res> {
  factory $SignOut$CopyWith(SignOut$ value, $Res Function(SignOut$) then) =
      _$SignOut$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOut$CopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOut$CopyWith<$Res> {
  _$SignOut$CopyWithImpl(SignOut$ _value, $Res Function(SignOut$) _then)
      : super(_value, (v) => _then(v as SignOut$));

  @override
  SignOut$ get _value => super._value as SignOut$;
}

/// @nodoc
class _$SignOut$ implements SignOut$ {
  const _$SignOut$();

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOut$ implements SignOut {
  const factory SignOut$() = _$SignOut$;
}

/// @nodoc
abstract class $SignOutSuccessfulCopyWith<$Res> {
  factory $SignOutSuccessfulCopyWith(
          SignOutSuccessful value, $Res Function(SignOutSuccessful) then) =
      _$SignOutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessfulCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutSuccessfulCopyWith<$Res> {
  _$SignOutSuccessfulCopyWithImpl(
      SignOutSuccessful _value, $Res Function(SignOutSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutSuccessful));

  @override
  SignOutSuccessful get _value => super._value as SignOutSuccessful;
}

/// @nodoc
class _$SignOutSuccessful implements SignOutSuccessful {
  const _$SignOutSuccessful();

  @override
  String toString() {
    return 'SignOut.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessful implements SignOut {
  const factory SignOutSuccessful() = _$SignOutSuccessful;
}

/// @nodoc
abstract class $SignOutErrorCopyWith<$Res> {
  factory $SignOutErrorCopyWith(
          SignOutError value, $Res Function(SignOutError) then) =
      _$SignOutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignOutErrorCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutErrorCopyWith<$Res> {
  _$SignOutErrorCopyWithImpl(
      SignOutError _value, $Res Function(SignOutError) _then)
      : super(_value, (v) => _then(v as SignOutError));

  @override
  SignOutError get _value => super._value as SignOutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignOutError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignOutError implements SignOutError {
  const _$SignOutError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignOut.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      _$SignOutErrorCopyWithImpl<SignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutError implements SignOut, ErrorAction {
  const factory SignOutError(Object error) = _$SignOutError;

  Object get error;
  $SignOutErrorCopyWith<SignOutError> get copyWith;
}

/// @nodoc
class _$ResetPasswordTearOff {
  const _$ResetPasswordTearOff();

// ignore: unused_element
  ResetPassword$ call(String email) {
    return ResetPassword$(
      email,
    );
  }

// ignore: unused_element
  ResetPasswordSuccessful successful() {
    return const ResetPasswordSuccessful();
  }

// ignore: unused_element
  ResetPasswordError error(Object error) {
    return ResetPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPassword = _$ResetPasswordTearOff();

/// @nodoc
mixin _$ResetPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  final ResetPassword _value;
  // ignore: unused_field
  final $Res Function(ResetPassword) _then;
}

/// @nodoc
abstract class $ResetPassword$CopyWith<$Res> {
  factory $ResetPassword$CopyWith(
          ResetPassword$ value, $Res Function(ResetPassword$) then) =
      _$ResetPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPassword$CopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPassword$CopyWith<$Res> {
  _$ResetPassword$CopyWithImpl(
      ResetPassword$ _value, $Res Function(ResetPassword$) _then)
      : super(_value, (v) => _then(v as ResetPassword$));

  @override
  ResetPassword$ get _value => super._value as ResetPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ResetPassword$(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword$ implements ResetPassword$ {
  const _$ResetPassword$(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ResetPassword$CopyWith<ResetPassword$> get copyWith =>
      _$ResetPassword$CopyWithImpl<ResetPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResetPassword$ implements ResetPassword {
  const factory ResetPassword$(String email) = _$ResetPassword$;

  String get email;
  $ResetPassword$CopyWith<ResetPassword$> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordSuccessfulCopyWith<$Res> {
  factory $ResetPasswordSuccessfulCopyWith(ResetPasswordSuccessful value,
          $Res Function(ResetPasswordSuccessful) then) =
      _$ResetPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordSuccessfulCopyWith<$Res> {
  _$ResetPasswordSuccessfulCopyWithImpl(ResetPasswordSuccessful _value,
      $Res Function(ResetPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuccessful));

  @override
  ResetPasswordSuccessful get _value => super._value as ResetPasswordSuccessful;
}

/// @nodoc
class _$ResetPasswordSuccessful implements ResetPasswordSuccessful {
  const _$ResetPasswordSuccessful();

  @override
  String toString() {
    return 'ResetPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessful implements ResetPassword {
  const factory ResetPasswordSuccessful() = _$ResetPasswordSuccessful;
}

/// @nodoc
abstract class $ResetPasswordErrorCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(
          ResetPasswordError value, $Res Function(ResetPasswordError) then) =
      _$ResetPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(
      ResetPasswordError _value, $Res Function(ResetPasswordError) _then)
      : super(_value, (v) => _then(v as ResetPasswordError));

  @override
  ResetPasswordError get _value => super._value as ResetPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ResetPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ResetPasswordError implements ResetPasswordError {
  const _$ResetPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ResetPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordError implements ResetPassword, ErrorAction {
  const factory ResetPasswordError(Object error) = _$ResetPasswordError;

  Object get error;
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith;
}
