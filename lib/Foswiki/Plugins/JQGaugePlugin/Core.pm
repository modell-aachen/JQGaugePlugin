# See bottom of file for license and copyright information

package Foswiki::Plugins::JQGaugePlugin::Core;
use strict;
use warnings;

use Foswiki::Plugins::JQueryPlugin::Plugin;
our @ISA = qw( Foswiki::Plugins::JQueryPlugin::Plugin );

use Foswiki::Plugins::JQGaugePlugin (); # for version information

=begin TML

---+ package Foswiki::Plugins::JQGaugePlugin::Core

This is the perl stub for the jquery.your plugin.

=cut

=begin TML

---++ ClassMethod new( $class, $session, ... )

Constructor

=cut

sub new {
    my $class = shift;
    my $session = shift || $Foswiki::Plugins::SESSION;

    my $this = bless(
        $class->SUPER::new(
            $session,
            name          => 'Gauge',
	    # version number in lock-step between the JQuery plugin and
	    # the Foswiki plugin.
            version       => '1.0.0',
            author        => 'Alexander Stoffers',
            homepage      => 'http://bernii.github.io/gauge.js/',
            documentation => "$Foswiki::cfg{SystemWebName}.JQGaugePlugin",
            puburl        => '%PUBURLPATH%/%SYSTEMWEB%/JQGaugePlugin',
            javascript    => ['gauge.min.js','jquery.gauge.init.js'],
            dependencies  => ['metadata', 'livequery']

              #    ,css => ['jquery.your.css']
        ),
        $class
    );

    return $this;
}


sub handleGauge {

	my ($this, $params, $topic, $web) = @_;
	
	my $theLines = $params->{lines} || '';
	
	return '';
}

1;

__END__
Foswiki - The Free and Open Source Wiki, http://foswiki.org/

Copyright (C) 2008-2013 Foswiki Contributors. Foswiki Contributors
are listed in the AUTHORS file in the root of this distribution.
NOTE: Please extend that file, not this notice.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version. For
more details read LICENSE in the root of this distribution.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

As per the GPL, removal of this notice is prohibited.
