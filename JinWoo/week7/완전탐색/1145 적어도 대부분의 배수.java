import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int[] arr = new int[5];

        StringTokenizer st = new StringTokenizer(br.readLine());

        for (int i = 0; i < 5; i++) {
            arr[i] = Integer.parseInt(st.nextToken());
        }

        Arrays.sort(arr);

        int num = arr[0];

        while (true) {
            int count = 0;

            for (int i = 0; i < 5; i++) {
                if (num % arr[i] == 0) {
                    count++;
                }
            }
            if (count >= 3) {
                break;
            }
            num++;
        }
        System.out.print(num);
    }
}
