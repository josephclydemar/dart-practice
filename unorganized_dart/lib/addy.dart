class Addy {
  int? n1;
  int? n2;
  int? n3;
  int? n4;
  Addy(this.n1, this.n2);
  Addy.withNum3(this.n1, this.n2, this.n3);
  Addy.withNum4(this.n1, this.n2, this.n3, this.n4);

  int getSum() {
    if(this.n3 == null) this.n3 = 0;
    if(this.n4 == null) this.n4 = 0;
    return this.n1! + this.n2! + this.n3! + this.n4!;
  }
}