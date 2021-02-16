#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <sys/wait.h>
#include <string.h>
#include <stdlib.h>

#define MAXLINE 4096

int
main( int argc , char* argv[])
{
	char buf[MAXLINE];
	pid_t pid;
	int status;

	printf("%% ");
	while(fgets(buf,MAXLINE,stdin) != NULL)
	{
		if(buf[strlen(buf) - 1] = '\n')
		{
			buf[strlen(buf) - 1] = 0;
		}

		if( (pid = fork()) < 0){
			printf("fork error");
			exit(126);
		}else if (pid == 0){
			execlp(buf,buf,(char*)0);
			printf("couldn't execute: %s",buf);
			exit(127);
		}

		if((pid = waitpid(pid, &status, 0))<0){
			printf("waitpid error");
		}
		printf("%% ");
	}

	return 0;
}
