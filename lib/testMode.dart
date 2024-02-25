void main() {
  foo f = foo();

  f.fillS(1);
  f.fillS(2);
  f.fillP(2);
  f.fillS(3);
  f.fillP(3);
  f.fillS(4);
  f.fillD(3);
  f.fillP(4);
  f.fillS(5);
  f.fillD(4);
  f.fillP(5);
  f.fillS(6);
  f.fillF(4);
  f.fillD(5);
  f.fillP(6);
  f.fillS(7);
  f.fillF(5);
  f.fillD(6);
  f.fillP(7);
  print(f.eConfig);
  //f.findShell(2);
}

class foo {
  int s = 2;
  int p = 6;
  int d = 10;
  int f = 14;

  int atomicNumber = 30;

  String eConfig = '';

  void fillS(int n) {
    String? myS;
    for (int i = 1; i <= 2; i++) {
      if (atomicNumber == 0) {
        break;
      }
      myS = i.toString();
      atomicNumber--;
    }
    if (myS != null) {
      eConfig = eConfig + ' ${n}s$myS';
    }
  }

  void fillP(int n) {
    String? myP;
    for (int i = 1; i <= 6; i++) {
      if (atomicNumber == 0) {
        break;
      }
      myP = i.toString();
      atomicNumber--;
    }
    if (myP != null) {
      eConfig = eConfig + ' ${n}p$myP';
    }
  }

  void fillD(int n) {
    String? myD;
    for (int i = 1; i <= 10; i++) {
      if (atomicNumber == 0) {
        break;
      }
      myD = i.toString();
      atomicNumber--;
    }
    if (myD != null) {
      eConfig = eConfig + ' ${n}d$myD';
    }
  }

  void fillF(int n) {
    String? myF;
    for (int i = 1; i <= 10; i++) {
      if (atomicNumber == 0) {
        break;
      }
      myF = i.toString();
      atomicNumber--;
    }
    if (myF != null) {
      eConfig = eConfig + ' ${n}f$myF';
    }
  }

  void findShell(int noOFElectrons) {
    int atomicNumber = noOFElectrons;
    List<int> maxShell = [];

    for (int i = 0; i < 4; i++) {
      int n = i + 1;
      int max = 2 * (n ^ 2);
      maxShell.add(max);
    }

    print(maxShell);
  }
}
