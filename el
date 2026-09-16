import java.math.BigInteger;
import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter prime p: ");
        BigInteger p = sc.nextBigInteger();
        System.out.print("Enter generator g: ");
        BigInteger g = sc.nextBigInteger();
        System.out.print("Enter private key x: ");
        BigInteger x = sc.nextBigInteger();
        System.out.print("Enter message m: ");
        BigInteger m = sc.nextBigInteger();
        System.out.print("Enter random key k: ");
        BigInteger k = sc.nextBigInteger();
        BigInteger y = g.modPow(x, p);
        // Encryption
        BigInteger c1 = g.modPow(k, p);
        BigInteger c2 = m.multiply(y.modPow(k, p)).mod(p);  
        System.out.println("Encrypted: (" + c1 + ", " + c2 + ")");
        // Decryption
        BigInteger s = c1.modPow(x, p);
        BigInteger decrypted = c2.multiply(s.modInverse(p)).mod(p);
        System.out.println("Decrypted: " + decrypted);
    }
}
