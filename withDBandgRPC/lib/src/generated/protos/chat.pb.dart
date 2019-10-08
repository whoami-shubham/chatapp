///
//  Generated code. Do not modify.
//  source: protos/chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Response', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..a<$core.int>(1, 'status', $pb.PbFieldType.O3)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response() => create();
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Response clone() => Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class JoinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinRequest', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  JoinRequest._() : super();
  factory JoinRequest() => create();
  factory JoinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinRequest clone() => JoinRequest()..mergeFromMessage(this);
  JoinRequest copyWith(void Function(JoinRequest) updates) => super.copyWith((message) => updates(message as JoinRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinRequest create() => JoinRequest._();
  JoinRequest createEmptyInstance() => create();
  static $pb.PbList<JoinRequest> createRepeated() => $pb.PbList<JoinRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinRequest>(create);
  static JoinRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class JoinResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinResponse', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOM<Response>(1, 'response', subBuilder: Response.create)
    ..hasRequiredFields = false
  ;

  JoinResponse._() : super();
  factory JoinResponse() => create();
  factory JoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JoinResponse clone() => JoinResponse()..mergeFromMessage(this);
  JoinResponse copyWith(void Function(JoinResponse) updates) => super.copyWith((message) => updates(message as JoinResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinResponse create() => JoinResponse._();
  JoinResponse createEmptyInstance() => create();
  static $pb.PbList<JoinResponse> createRepeated() => $pb.PbList<JoinResponse>();
  @$core.pragma('dart2js:noInline')
  static JoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinResponse>(create);
  static JoinResponse _defaultInstance;

  @$pb.TagNumber(1)
  Response get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(Response v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  Response ensureResponse() => $_ensure(0);
}

class GetUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUser', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..a<$core.int>(1, 'nothing', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetUser._() : super();
  factory GetUser() => create();
  factory GetUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUser clone() => GetUser()..mergeFromMessage(this);
  GetUser copyWith(void Function(GetUser) updates) => super.copyWith((message) => updates(message as GetUser));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUser create() => GetUser._();
  GetUser createEmptyInstance() => create();
  static $pb.PbList<GetUser> createRepeated() => $pb.PbList<GetUser>();
  @$core.pragma('dart2js:noInline')
  static GetUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUser>(create);
  static GetUser _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nothing => $_getIZ(0);
  @$pb.TagNumber(1)
  set nothing($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNothing() => $_has(0);
  @$pb.TagNumber(1)
  void clearNothing() => clearField(1);
}

class SendUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendUser', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..pPS(1, 'user')
    ..hasRequiredFields = false
  ;

  SendUser._() : super();
  factory SendUser() => create();
  factory SendUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendUser clone() => SendUser()..mergeFromMessage(this);
  SendUser copyWith(void Function(SendUser) updates) => super.copyWith((message) => updates(message as SendUser));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendUser create() => SendUser._();
  SendUser createEmptyInstance() => create();
  static $pb.PbList<SendUser> createRepeated() => $pb.PbList<SendUser>();
  @$core.pragma('dart2js:noInline')
  static SendUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendUser>(create);
  static SendUser _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get user => $_getList(0);
}

class SendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendRequest', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOS(1, 'from')
    ..aOS(2, 'to')
    ..aOS(3, 'message')
    ..hasRequiredFields = false
  ;

  SendRequest._() : super();
  factory SendRequest() => create();
  factory SendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  SendRequest copyWith(void Function(SendRequest) updates) => super.copyWith((message) => updates(message as SendRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  @$core.pragma('dart2js:noInline')
  static SendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendRequest>(create);
  static SendRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Result', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'from')
    ..aOS(3, 'to')
    ..aOS(4, 'message')
    ..aOS(5, 'time')
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result() => create();
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Result clone() => Result()..mergeFromMessage(this);
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get time => $_getSZ(4);
  @$pb.TagNumber(5)
  set time($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendResponse', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOM<Response>(1, 'response', subBuilder: Response.create)
    ..aOM<Result>(2, 'result', subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  SendResponse._() : super();
  factory SendResponse() => create();
  factory SendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  SendResponse copyWith(void Function(SendResponse) updates) => super.copyWith((message) => updates(message as SendResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() => $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse _defaultInstance;

  @$pb.TagNumber(1)
  Response get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(Response v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  Response ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  Result get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(Result v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
  @$pb.TagNumber(2)
  Result ensureResult() => $_ensure(1);
}

class GetMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMessages', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOS(1, 'user')
    ..hasRequiredFields = false
  ;

  GetMessages._() : super();
  factory GetMessages() => create();
  factory GetMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetMessages clone() => GetMessages()..mergeFromMessage(this);
  GetMessages copyWith(void Function(GetMessages) updates) => super.copyWith((message) => updates(message as GetMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessages create() => GetMessages._();
  GetMessages createEmptyInstance() => create();
  static $pb.PbList<GetMessages> createRepeated() => $pb.PbList<GetMessages>();
  @$core.pragma('dart2js:noInline')
  static GetMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMessages>(create);
  static GetMessages _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
}

class SendMessages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessages', package: const $pb.PackageName('chat'), createEmptyInstance: create)
    ..aOM<Response>(1, 'response', subBuilder: Response.create)
    ..pc<Result>(2, 'message', $pb.PbFieldType.PM, subBuilder: Result.create)
    ..hasRequiredFields = false
  ;

  SendMessages._() : super();
  factory SendMessages() => create();
  factory SendMessages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessages clone() => SendMessages()..mergeFromMessage(this);
  SendMessages copyWith(void Function(SendMessages) updates) => super.copyWith((message) => updates(message as SendMessages));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessages create() => SendMessages._();
  SendMessages createEmptyInstance() => create();
  static $pb.PbList<SendMessages> createRepeated() => $pb.PbList<SendMessages>();
  @$core.pragma('dart2js:noInline')
  static SendMessages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessages>(create);
  static SendMessages _defaultInstance;

  @$pb.TagNumber(1)
  Response get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(Response v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  Response ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Result> get message => $_getList(1);
}

