#include <cstdio>
#include <vector>

typedef std::vector<int> Memo;

int fib(int n, Memo& memo) {
    if(n == 0 || n == 1) return 1; // base case
    if(memo[n] != -1) return memo[n]; // memorization with recursion
    return memo[n] = fib(n-1, memo) + fib(n-2, memo);
}

int main() {
    int n = 0; // seed value
    Memo memo = Memo(50, -1); // memory
    
    std::scanf("%d", &n);
    std::printf("%d\n", fib(n, memo));
}