import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a: ");
        int a = sc.nextInt();
        System.out.print("Enter b: ");
        int b = sc.nextInt();
        System.out.print("Enter prime p: ");
        int p = sc.nextInt();
        System.out.println("Points on the curve:");
        for (int x = 0; x < p; x++) {
            for (int y = 0; y < p; y++) {
                int left = (y * y) % p;
                int right = (x * x * x + a * x + b) % p;
                if (left == right) {
                    System.out.println("(" + x + ", " + y + ")");
                }
            }
        }
    }
}
