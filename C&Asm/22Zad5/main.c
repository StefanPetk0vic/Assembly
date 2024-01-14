#include <stdio.h>
extern int pp(int prvi,int drugi);
int main() {
	int mat[25][2];
	int n;
	int niz[25];
	printf("Uneti dimenziju matrice:\n");
	scanf_s("%d", &n);
	printf("Uneti elemente matrice:\n");
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < 2; j++) { 
			scanf_s("%d", &mat[i][j]);
		}
	}
	printf("Prikaz matrice:\n");
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < 2; j++) {
			printf("%d ",mat[i][j]);
		}
		printf("\n");
	}
	for (int i = 0; i < n; i++) {
		niz[i] = pp(mat[i][0],mat[i][1]);
	}
	printf("Prikaz niza:\n");
	for (int i = 0; i < n; i++) {
		printf("%d ",niz[i]);
	}
	return 0;
}
