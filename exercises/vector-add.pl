#!/usr/bin/perl

my @sumvector = (0, 0);

# use STDIN as data source
while (<>) {

	# build vector from line in $_
	my @readvector = split( / /, $_ );

	PrintVector(@readvector);

	# add read vector to sum vector
	@sumvector = AddVectors(\@sumvector, \@readvector);

}

print "-" x 20, "\n";
PrintVector(@sumvector);


sub PrintVector {
	printf("(%7.2f; %7.2f)\n", @_);
}

sub AddVectors {
	my @v1 = @{$_[0]};
	my @v2 = @{$_[1]};

	my @sum = ( $v1[0]+$v2[0], $v1[1]+$v2[1] );
	return @sum;
}
