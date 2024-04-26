#include <stdlib.h>
#include <unistd.h>

int main() {
    pid_t child_pid = fork();

    if (child_pid > 0) {
        // Parent process
        sleep(20);  // Sleep for some time to allow child to become a zombie
    } else if (child_pid == 0) {
        // Child process
        exit(0);  // Child process exits immediately
    }

    return 0;
}
