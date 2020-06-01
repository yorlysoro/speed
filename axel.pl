sub update()
{
	system("apt update");
}

sub upgrade()
{
	my $apt;
	print"Descargando actualizaciones con axel\n";
	update();
	$apt = system("cd /var/cache/apt/archives/; apt-get -y --print-uris upgrade | egrep -o -e \"(ht|f)tp://[^\']+\" > apt-fast.list && cat apt-fast.list | xargs -l1 axel -a");
	if($apt == 0)
	{
		print "Actualizando\n";
		system("apt upgrade -y");
	}
	else
	{
		print "Error! No hay actualizaciones\n";
	}
}

sub dist_upgrade()
{
	my $apt;
	print"Descargando actualizaciones con axel\n";
	update();
	$apt = system("cd /var/cache/apt/archives/; apt-get -y --print-uris dist-upgrade | egrep -o -e \"(ht|f)tp://[^\']+\" > apt-fast.list && cat apt-fast.list | xargs -l1 axel -a");
	if($apt == 0)
	{
		print "Actualizando\n";
		system("apt dist-upgrade -y");
	}
	else
	{
		print "Error! No hay actualizaciones\n";
	}
}

sub install()
{
	my $apt;
	my $program;
	print"Instalando con axel\n";
	print "Intrduzca el nombre del programa\n";
	$program = <STDIN>;
	chomp($program);
	update();
	$apt = system("cd /var/cache/apt/archives/; apt-get -y --print-uris install '$program' | egrep -o -e \"(ht|f)tp://[^\']+\" > apt-fast.list && cat apt-fast.list | xargs -l1 axel -a");
	if($apt == 0)
	{
		print "Instalando\n";
		system("apt install '$program' -y");
	}
	else
	{
		print "Error! No se encuentra el programa\n";
	}
}
sub upgrade_all()
{
	upgrade();
	dist_upgrade();
}
1;
