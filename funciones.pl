use feature "switch";
require 'axel.pl';
sub menu ()
{
	print "Seleciona lo que quieres hacer\n";
	print "a)Upgrade\t b)Dist-Upgrade\n";
	print "c)Install\t d)Upgrade-all\n";
	print "q)Salir\n";
	my $select = <STDIN>;
	given($select)
	{
		when (/^a/) {upgrade();}
		when (/^b/) {dist_upgrade();}
		when (/^c/) {install();}
		when (/^d/) {upgrade_all();}
		when (/^q/) {print "Adios!\n"; exit(1);}
		default {print "Opcion Invalida\n"; exit(1);}
	}
}

sub funcion2()
{
	print "Esta es la funcion 2\n";
}

1;#return al archivo principal
