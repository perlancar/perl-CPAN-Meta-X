# no code
## no critic: TestingAndDebugging::RequireUseStrict
package CPAN::Meta::X::Old;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Custom (x_*) keys in CPAN distribution metadata being used in the wild (old/deprecated)

=head1 DESCRIPTION

This is the historical companion for L<CPAN::Meta::X>.


=head1 OLD CUSTOM DISTRIBUTION METADATA KEYS


=head1 OLD CUSTOM PREREQS PHASES

=head2 x_spec phase

Express that the current distribution is following a specification defined in
the specified module. No longer used; to express "follows a specification
module" we now use (phase=develop, rel=x_spec).

References:

=over

=item * PERLANCAR, L<https://perlancar.wordpress.com/2016/12/28/x_-prereqs/>

=back


=head1 OLD CUSTOM PREREQS RELATIONSHIPS


=head1 OLD CUSTOM RESOURCES


=head1 SEE ALSO

L<CPAN::Meta::X>
