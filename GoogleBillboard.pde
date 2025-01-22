public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

public void setup() {
  double result = findPrime();
  System.out.println(result);
  noLoop();
}

public double findPrime() {
  for (int i = 0; i < e.length() - 10; i++) {
    double num = Double.parseDouble(e.substring(i, i + 10));
    if (i == 0) num = Double.parseDouble(e.substring(0, 1) + e.substring(2, 12));
    if (i == 1) num = Double.parseDouble(e.substring(2, 13));
    if (isPrime(num)) return num;
  }
  return 0.0;
}

public void draw() { }

public boolean isPrime(double num) {
  if (num < 2) return false;
  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) return false;
  }
  return true;
}
