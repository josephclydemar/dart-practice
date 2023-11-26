// ignore_for_file: override_on_non_overriding_member

import './interest.dart';

class Lend extends Interest {
  double? _principal;
  double? _duration;
  double? _future;
  @override
  double? _rate;
  
  Lend({required double principal, required double duration, required double rate}) {
    this._principal = principal;
    this._duration = duration;
    this._rate = rate;
  }

  @override // F = P + I  |  I = Prn  |  F = P + Prn  |  F = P(1 + rn)
  void calculate() => this._future = this._principal! *( 1.0 + this._duration! * this._rate!);
  double get getFuture => this._future!;
  double get getRate => this._rate!;
  
  List<double> getInfo() {
    return [this.getFuture, this.getRate];
  }
}