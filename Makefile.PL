#!/usr/bin/perl

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'D64::Disk::Image',
    VERSION_FROM      => 'lib/D64/Disk/Image.pm',
    PREREQ_PM         => {
                             File::Temp => 0,
                         },
    ($] >= 5.005 ?
      (AUTHOR         => 'Pawel Krol <pawelkrol@cpan.org>') : ()),
    DEFINE            => '',
    OBJECT            => 'Image.o diskimage.o',
    OPTIMIZE          => '-O2',
    META_MERGE        => {
        'meta-spec' => {
            'version' => 2,
        },
        'resources' => {
            'bugtracker' => {
                'web' => 'https://github.com/pawelkrol/D64-Disk-Image/issues',
            },
            'repository' => {
                'type' => 'git',
                'url'  => 'git://github.com/pawelkrol/D64-Disk-Image.git',
                'web'  => 'https://github.com/pawelkrol/D64-Disk-Image.git',
            },
        },
    },
);
