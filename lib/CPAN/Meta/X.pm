# no code
## no critic: TestingAndDebugging::RequireUseStrict
package CPAN::Meta::X;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Catalog of custom (x_*) keys in CPAN distribution metadata being used in the wild

=head1 DESCRIPTION

L<The CPAN distribution metadata specification|CPAN::Meta::Spec> allows custom
keys (those that begin with C<x_> or C<X_>) to be added to the metadata. This
document tries to catalog the custom keys that are being used by CPAN authors.

In addition to custom metadata keys, this document also lists:

=over

=item * custom phases and relationships in the L<prereqs|CPAN::Meta::Spec/PREREQUISITES> hash that are being used by people

=item * custom keys in L<resources|CPAN::Meta::Spec/resources> hash

=back


=head1 CUSTOM DISTRIBUTION METADATA KEYS

=head2 x_Dist_Zilla key

A big structure recording information related to L<Dist::Zilla> which presumably
is used to build the current distribution. Some of the things being put in here
include: perl version used to build the distribution, Dist::Zilla plugins used
to build the distribution, and so on.


=head2 x_authority key


=head2 x_contributors key

List of contributors in a release.

Examples:

TBD

References:

=over

=item * DAGOLDEN, L<https://perlmaven.com/how-to-add-list-of-contributors-to-the-cpan-meta-files>

=item * SZABGAB, L<https://github.com/book/CPANio/issues/7>

=back


=head2 x_deprecated key


=head2 x_examples key

List prerequisites for example scripts.

References:

=over

=item * KENTNL, L<https://perlancar.wordpress.com/2016/12/28/x_-prereqs/>

=back


=head2 x_generated_by_perl key


=head2 x_help_wanted key


=head2 x_provides_scripts key

List scripts that are being provided in the distribution. The structure is
modelled after the standard L<provides|CPAN::Meta::Spec/provides> hash.

Examples:

So say your distribution provides a "csv2json" script, your F<META.json> would
contain:

 "x_provides_scripts": {
   "csv2json": {
     "version": "0.1",
     "file": "bin/csv2json"
   }
 }

References:

=over

=item * TOBYINK, L<https://perlmonks.org/?node_id=11123240>

=back


=head2 x_spdx_expression key


=head2 x_serialization_backend key


=head2 x_static_install key


=head1 CUSTOM PREREQS PHASES

=head2 x_benchmarks phase

Express that the current distribution is benchmarking the specified module.

References:

=over

=item * PERLANCAR, L<https://perlancar.wordpress.com/2016/12/28/x_-prereqs/>

=back


=head2 x_lists phase

Express that the current distribution is including the specified module in some
list(s), e.g. an L<Acme::CPANModules> list.

References:

=over

=item * PERLANCAR, L<Dist::Zilla::Plugin::Acme::CPANModules>

=back

=head2 x_mentions phase

Express that the current distribution is mentioning the specified module.

References:

=over

=item * PERLANCAR, L<https://perlancar.wordpress.com/2016/12/28/x_-prereqs/>

=back


=head1 CUSTOM PREREQS RELATIONSHIPS

=head2 x_alt_for relationship

Express that a distribution provides an alternate (implementation) for a module.

Example: L<Perinci::Access::Lite> distribution specifies a runtime C<x_alt_for>
prereq relationship to L<Perinci::Access>.

IDEA: The more specific nature of alternate could be specified further in
additional relationsip e.g. C<x_lightweight_alt_for>, C<x_tiny_alt_for>,
C<x_windows_alt_for>, etc, if needed.

=head2 x_benchmarks relationship

See L</"x_benchmarks phase">.


=head2 x_features_from relationship

Express that one of the modules in the current distribution is declaring
features that are defined defined in an associated C<Module::Features::*>
module. Used with (phase=develop).

Examples: L<Text::ANSITable>, L<Text::Table::More>, and L<Text::Table::Sprintf>
declares features defined by L<Module::Features::TextTable> so they add a
dependency (phase=develop, rel=x_features_from) to
L<Module::Features::TextTable>.

References:

=over

=item * L<Module::Features> specification

=back

=head2 x_lists relationship

See L</"x_lists phase">.

=head2 x_mentions relationship

See L</"x_mentions phase">.


=head2 x_spec relationship

Express that the current distribution is following a specification defined in
the specified module. Used with (phase=develop).

References:

=over

=item * PERLANCAR, L<https://perlancar.wordpress.com/2016/12/28/x_-prereqs/>

=back


=head1 CUSTOM RESOURCES

=head2 x_IRC resource


=head2 x_identifier resource


=head2 x_mailinglist resource


=head2 x_wiki resource


=head1 SEE ALSO

L<CPAN::Meta::Spec> - Specification for CPAN distribution metadata

L<CPAN::Meta::X::Old>
