package Browser::Find::Windows;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

use Exporter qw(import);
our @EXPORT_OK = qw(find_browser list_browsers);

my @paths = (
    'C:/Program Files/Mozilla Firefox/firefox.exe',
    'C:/Program Files/Google/Chrome/Application/chrome.exe',
);

sub find_browser {
    for (@paths) { return $_ if -x $_ }
    return;
}

sub list_browsers {
    my @res;
    for (@paths) { push @res, $_ if -x $_ }
    @res;
}

1;
# ABSTRACT: Find available browser on Windows

=head1 SYNOPSIS

 use Browser::Find::Windows qw(find_browser list_browsers);
 my $path = find_browser() or die "Can't find a browser";

 say for list_browsers();


=head1 DESCRIPTION

Preliminary version.


=head1 FUNCTIONS

=head2 find_browser

=head2 list_browsers


=head1 SEE ALSO

The B<start> command can also be used to open a URL or HTML page. This is
utilized by L<Browser::Open>.

=cut
