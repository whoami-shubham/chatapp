///
//  Generated code. Do not modify.
//  source: protos/chat.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const JoinRequest$json = const {
  '1': 'JoinRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const JoinResponse$json = const {
  '1': 'JoinResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.chat.Response', '10': 'response'},
  ],
};

const GetUser$json = const {
  '1': 'GetUser',
  '2': const [
    const {'1': 'nothing', '3': 1, '4': 1, '5': 5, '10': 'nothing'},
  ],
};

const SendUser$json = const {
  '1': 'SendUser',
  '2': const [
    const {'1': 'user', '3': 1, '4': 3, '5': 9, '10': 'user'},
  ],
};

const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'from', '3': 2, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'to', '3': 3, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'time', '3': 5, '4': 1, '5': 9, '10': 'time'},
  ],
};

const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.chat.Response', '10': 'response'},
    const {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.chat.Result', '10': 'result'},
  ],
};

const GetMessages$json = const {
  '1': 'GetMessages',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
  ],
};

const SendMessages$json = const {
  '1': 'SendMessages',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.chat.Response', '10': 'response'},
    const {'1': 'message', '3': 2, '4': 3, '5': 11, '6': '.chat.Result', '10': 'message'},
  ],
};

