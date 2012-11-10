# See bottom of file for default license and copyright information

=begin TML

---+ package EmptyJQueryPlugin

=cut

package Foswiki::Plugins::EmptyJQueryPlugin;

# Always use strict to enforce variable scoping
use strict;
use warnings;

use Foswiki::Func    ();    # The plugins API
use Foswiki::Plugins ();    # For the API version

# $VERSION is referred to by Foswiki, and is the only global variable that
# *must* exist in this package.  Two version formats are supported:
#
# Recommended:  Dotted triplet.  Use "v1.2.3" format for releases,  and
# "v1.2.3_001" for "alpha" versions.  The v prefix is required.
# This format uses the "declare" format
#     use version; our $VERSION = version->declare("v1.2.0");
#
# Alternative:  Simple decimal version.   Use "1.2" format for releases, and
# "1.2_001" for "alpha" versions.  Do NOT use the "v" prefix.  This style
# must be set using the "parse" method
#    use version; our $VERSION = version->parse("1.20_001");
#
# Note:  Alpha versions compare as numerically lower than the non-alpha version
# so the versions in ascending order are:
#   v1.2.1_001 -> v1.2.1 -> v1.2.2_001 -> v1.2.2
#
# These statements MUST be on the same line. See "perldoc version" for more
# information on version strings.
use version; our $VERSION = version->declare("v1.0.0_001");

our $RELEASE = '03 Mar 2010';

# Short description of this plugin
# One line description, is shown in the %SYSTEMWEB%.TextFormattingRules topic:
our $SHORTDESCRIPTION = 'Your New Jquery plugin module..';

our $NO_PREFS_IN_TOPIC = 1;

=begin TML

---++ initPlugin($topic, $web, $user) -> $boolean
   * =$topic= - the name of the topic in the current CGI query
   * =$web= - the name of the web in the current CGI query
   * =$user= - the login name of the user
   * =$installWeb= - the name of the web the plugin topic is in
     (usually the same as =$Foswiki::cfg{SystemWebName}=)

=cut

sub initPlugin {
    my ( $topic, $web, $user, $installWeb ) = @_;

    # check for Plugins.pm versions
    if ( $Foswiki::Plugins::VERSION < 2.0 ) {
        Foswiki::Func::writeWarning( 'Version mismatch between ',
            __PACKAGE__, ' and Plugins.pm' );
        return 0;
    }
    if ( $Foswiki::cfg{Plugins}{JQueryPlugin}{Enabled} ) {
        require Foswiki::Plugins::JQueryPlugin;
        Foswiki::Plugins::JQueryPlugin::registerPlugin( "Your",
            'Foswiki::Plugins::EmptyJQueryPlugin::YOUR' );
    }

    # Plugin correctly initialized
    return 1;
}

1;
__END__
This copyright information applies to the EmptyJQueryPlugin:

# Plugin for Foswiki - The Free and Open Source Wiki, http://foswiki.org/
#
# EmptyJQueryPlugin is Copyright (C) 2010 Foswiki Contributors
# 
# The Javascript files packaged with this plugin are Copyright (C) and licensed
# separately by their respective authors, please review those files separately
# for more detailed information.
#
# Foswiki Contributors are listed in the AUTHORS file in the root
# of this distribution. NOTE: Please extend that file, not this notice.
#
#
# This license applies to EmptyJQueryPlugin and to any derivatives.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version. For
# more details read LICENSE in the root of this distribution.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# For licensing info read LICENSE file in the root of this distribution.
