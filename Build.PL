use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTTP::MobileAgent::Plugin::RoamingZone',
    license             => 'perl',
    dist_author         => 'OHTSUKA Ko-hei <nene@kokogiko.net>',
    dist_version_from   => 'lib/HTTP/MobileAgent/Plugin/RoamingZone.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'HTTP-MobileAgent-Plugin-RoamingZone-*' ],
);

$builder->create_build_script();
