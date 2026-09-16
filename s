public class Main {
    public static void main(String[] args) {
        // Example S-Box
        int[][] SBox = {
            {14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7},
            {0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8},
            {4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0},
            {15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13}
        };
        String input = "101011";
        // Row: first and last bits
        int row = Integer.parseInt(
            "" + input.charAt(0) + input.charAt(5), 2);

        // Column: middle four bits
        int column = Integer.parseInt(input.substring(1, 5), 2);
        int output = SBox[row][column];
        System.out.println("Input  : " + input);
        System.out.println("Row    : " + row);
        System.out.println("Column : " + column);
        System.out.println("Output : " +
                String.format("%4s", Integer.toBinaryString(output))
                .replace(' ', '0'));
    }
}
