#include <string.h>
#include <stdlib.h>
extern void axel_upgrade(void);
extern void axel_distupgrade(void);
extern void axel_install(void);
extern void upgrade_all(void);

void menu(void)
{
	char select;
	
	printf("Seleciona lo que quieres hacer\n"
	"a.Upgrade\t b.Dist-Upgrade\n"
	"c.Install\t d.Upgrade-all\n"
	"q.Salir\n");
	select = getchar();
	switch(select)
	{
		case 'a' : axel_upgrade(); break;
		case 'b' : axel_distupgrade(); break;
		case 'c' : axel_install(); break;
		case 'd' : upgrade_all(); break;
		case 'q' : puts("Adios"); break;
		default : fputs("Opcion invalida!!!", stderr); exit(1);
	}
}
