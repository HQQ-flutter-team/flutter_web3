part of ethers;

// class Event extends Log<_EventImpl> {
//   const Event._(_EventImpl impl) : super._(impl);

//   factory Event.fromJS(dynamic jsObject) => Event._(jsObject);

//   String get event => impl.event;

//   String get eventSignature => impl.eventSignature;

//   List<dynamic> get args => impl.args;

//   @override
//   String toString() => 'Event: $event $eventSignature with args $args';
// }

extension type Event(JSObject _) implements JSObject {
  external String get event;

  external String get eventSignature;

  @JS("args")
  external JSArray<JSAny?> get rawArgs;

  List<dynamic> get args => rawArgs.toDart;

  factory Event.fromJS(dynamic jsObject) => Event(jsObject);
}
