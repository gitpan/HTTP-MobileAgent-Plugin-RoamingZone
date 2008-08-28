package HTTP::MobileAgent::Plugin::RoamingZone::CodeHash;

use strict;
use Carp;

my %codehash = (
    '202' => 'Greece',
    '204' => 'Netherlands (Kingdom of the)',
    '206' => 'Belgium',
    '208' => 'France',
    '212' => 'Monaco (Principality of)',
    '213' => 'Andorra (Principality of)',
    '214' => 'Spain',
    '216' => 'Hungary (Republic of)',
    '218' => 'Bosnia and Herzegovina',
    '219' => 'Croatia (Republic of)',
    '220' => 'Serbia and Montenegro',
    '222' => 'Italy',
    '225' => 'Vatican City State',
    '226' => 'Romania',
    '228' => 'Switzerland (Confederation of)',
    '230' => 'Czech Republic',
    '231' => 'Slovak Republic',
    '232' => 'Austria',
    '234' => 'United Kingdom of Great Britain and Northern Ireland',
    '235' => 'United Kingdom of Great Britain and Northern Ireland',
    '238' => 'Denmark',
    '240' => 'Sweden',
    '242' => 'Norway',
    '244' => 'Finland',
    '246' => 'Lithuania (Republic of)',
    '247' => 'Latvia (Republic of)',
    '248' => 'Estonia (Republic of)',
    '250' => 'Russian Federation',
    '255' => 'Ukraine',
    '257' => 'Belarus (Republic of)',
    '259' => 'Moldova (Republic of)',
    '260' => 'Poland (Republic of)',
    '262' => 'Germany (Federal Republic of)',
    '266' => 'Gibraltar',
    '268' => 'Portugal',
    '270' => 'Luxembourg',
    '272' => 'Ireland',
    '274' => 'Iceland',
    '276' => 'Albania (Republic of)',
    '278' => 'Malta',
    '280' => 'Cyprus (Republic of)',
    '282' => 'Georgia',
    '283' => 'Armenia (Republic of)',
    '284' => 'Bulgaria (Republic of)',
    '286' => 'Turkey',
    '288' => 'Faroe Islands',
    '290' => 'Greenland (Denmark)',
    '292' => 'San Marino (Republic of)',
    '293' => 'Slovenia (Republic of)',
    '294' => 'The Former Yugoslav Republic of Macedonia',
    '295' => 'Liechtenstein (Principality of)',
    '302' => 'Canada',
    '308' => 'Saint Pierre and Miquelon (Collectivité territoriale de la République française)',
    '310' => 'United States of America',
    '311' => 'United States of America',
    '312' => 'United States of America',
    '313' => 'United States of America',
    '314' => 'United States of America',
    '315' => 'United States of America',
    '316' => 'United States of America',
    '330' => 'Puerto Rico',
    '332' => 'United States Virgin Islands',
    '334' => 'Mexico',
    '338' => 'Jamaica',
    '340' => 'Martinique (French Department of)',
    '340' => 'Guadeloupe (French Department of)',
    '342' => 'Barbados',
    '344' => 'Antigua and Barbuda',
    '346' => 'Cayman Islands',
    '348' => 'British Virgin Islands',
    '350' => 'Bermuda',
    '352' => 'Grenada',
    '354' => 'Montserrat',
    '356' => 'Saint Kitts and Nevis',
    '358' => 'Saint Lucia',
    '360' => 'Saint Vincent and the Grenadines',
    '362' => 'Netherlands Antilles',
    '363' => 'Aruba',
    '364' => 'Bahamas (Commonwealth of the)',
    '365' => 'Anguilla',
    '366' => 'Dominica (Commonwealth of)',
    '368' => 'Cuba',
    '370' => 'Dominican Republic',
    '372' => 'Haiti (Republic of)',
    '374' => 'Trinidad and Tobago',
    '376' => 'Turks and Caicos Islands',
    '400' => 'Azerbaijani Republic',
    '401' => 'Kazakhstan (Republic of)',
    '402' => 'Bhutan (Kingdom of)',
    '404' => 'India (Republic of)',
    '410' => 'Pakistan (Islamic Republic of)',
    '412' => 'Afghanistan',
    '413' => 'Sri Lanka (Democratic Socialist Republic of)',
    '414' => 'Myanmar (Union of)',
    '415' => 'Lebanon',
    '416' => 'Jordan (Hashemite Kingdom of)',
    '417' => 'Syrian Arab Republic',
    '418' => 'Iraq (Republic of)',
    '419' => 'Kuwait (State of)',
    '420' => 'Saudi Arabia (Kingdom of)',
    '421' => 'Yemen (Republic of)',
    '422' => 'Oman (Sultanate of)',
    '424' => 'United Arab Emirates',
    '425' => 'Israel (State of)',
    '426' => 'Bahrain (Kingdom of)',
    '427' => 'Qatar (State of)',
    '428' => 'Mongolia',
    '429' => 'Nepal',
    '430' => 'United Arab Emirates',
    '431' => 'United Arab Emirates',
    '432' => 'Iran (Islamic Republic of)',
    '434' => 'Uzbekistan (Republic of)',
    '436' => 'Tajikistan (Republic of)',
    '437' => 'Kyrgyz Republic',
    '438' => 'Turkmenistan',
    '440' => 'Japan',
    '441' => 'Japan',
    '450' => 'Korea (Republic of)',
    '452' => 'Viet Nam (Socialist Republic of)',
    '454' => 'Hongkong, China',
    '455' => 'Macao, China',
    '456' => 'Cambodia (Kingdom of)',
    '457' => 'Lao People\'s Democratic Republic',
    '460' => 'China (People\'s Republic of)',
    '461' => 'China (People\'s Republic of)',
    '466' => 'Taiwan, China',
    '467' => 'Democratic People\'s Republic of Korea',
    '470' => 'Bangladesh (People\'s Republic of)',
    '472' => 'Maldives (Republic of)',
    '502' => 'Malaysia',
    '505' => 'Australia',
    '510' => 'Indonesia (Republic of)',
    '514' => 'Democratique Republic of Timor-Leste',
    '515' => 'Philippines (Republic of the)',
    '520' => 'Thailand',
    '525' => 'Singapore (Republic of)',
    '528' => 'Brunei Darussalam',
    '530' => 'New Zealand',
    '534' => 'Northern Mariana Islands (Commonwealth of the)',
    '535' => 'Guam',
    '536' => 'Nauru (Republic of)',
    '537' => 'Papua New Guinea',
    '539' => 'Tonga (Kingdom of)',
    '540' => 'Solomon Islands',
    '541' => 'Vanuatu (Republic of)',
    '542' => 'Fiji (Republic of)',
    '543' => 'Wallis and Futuna (Territoire français d\'outre-mer)',
    '544' => 'American Samoa',
    '545' => 'Kiribati (Republic of)',
    '546' => 'New Caledonia (Territoire français d\'outre-mer)',
    '547' => 'French Polynesia (Territoire français d\'outre-mer)',
    '548' => 'Cook Islands',
    '549' => 'Samoa (Independent State of)',
    '550' => 'Micronesia (Federated States of)',
    '551' => 'Marshall Islands (Republic of the)',
    '552' => 'Palau (Republic of)',
    '602' => 'Egypt (Arab Republic of)',
    '603' => 'Algeria (People\'s Democratic Republic of)',
    '604' => 'Morocco (Kingdom of)',
    '605' => 'Tunisia',
    '606' => 'Libya (Socialist People\'s Libyan Arab Jamahiriya)',
    '607' => 'Gambia (Republic of the)',
    '608' => 'Senegal (Republic of)',
    '609' => 'Mauritania (Islamic Republic of)',
    '610' => 'Mali (Republic of)',
    '611' => 'Guinea (Republic of)',
    '612' => 'Côte d\'Ivoire (Republic of)',
    '613' => 'Burkina Faso',
    '614' => 'Niger (Republic of the)',
    '615' => 'Togolese Republic',
    '616' => 'Benin (Republic of)',
    '617' => 'Mauritius (Republic of)',
    '618' => 'Liberia (Republic of)',
    '619' => 'Sierra Leone',
    '620' => 'Ghana',
    '621' => 'Nigeria (Federal Republic of)',
    '622' => 'Chad (Republic of)',
    '623' => 'Central African Republic',
    '624' => 'Cameroon (Republic of)',
    '625' => 'Cape Verde (Republic of)',
    '626' => 'Sao Tome and Principe (Democratic Republic of)',
    '627' => 'Equatorial Guinea (Republic of)',
    '628' => 'Gabonese Republic',
    '629' => 'Congo (Republic of the)',
    '630' => 'Democratic Republic of the Congo',
    '631' => 'Angola (Republic of)',
    '632' => 'Guinea-Bissau (Republic of)',
    '633' => 'Seychelles (Republic of)',
    '634' => 'Sudan (Republic of the)',
    '635' => 'Rwandese Republic',
    '636' => 'Ethiopia (Federal Democratic Republic of)',
    '637' => 'Somali Democratic Republic',
    '638' => 'Djibouti (Republic of)',
    '639' => 'Kenya (Republic of)',
    '640' => 'Tanzania (United Republic of)',
    '641' => 'Uganda (Republic of)',
    '642' => 'Burundi (Republic of)',
    '643' => 'Mozambique (Republic of)',
    '645' => 'Zambia (Republic of)',
    '646' => 'Madagascar (Republic of)',
    '647' => 'Reunion (French Department of)',
    '648' => 'Zimbabwe (Republic of)',
    '649' => 'Namibia (Republic of)',
    '650' => 'Malawi',
    '651' => 'Lesotho (Kingdom of)',
    '652' => 'Botswana (Republic of)',
    '653' => 'Swaziland (Kingdom of)',
    '654' => 'Comoros (Union of the)',
    '655' => 'South Africa (Republic of)',
    '657' => 'Eritrea',
    '702' => 'Belize',
    '704' => 'Guatemala (Republic of)',
    '706' => 'El Salvador (Republic of)',
    '708' => 'Honduras (Republic of)',
    '710' => 'Nicaragua',
    '712' => 'Costa Rica',
    '714' => 'Panama (Republic of)',
    '716' => 'Peru',
    '722' => 'Argentine Republic',
    '724' => 'Brazil (Federative Republic of)',
    '730' => 'Chile',
    '732' => 'Colombia (Republic of)',
    '734' => 'Venezuela (Bolivarian Republic of)',
    '736' => 'Bolivia (Republic of)',
    '738' => 'Guyana',
    '740' => 'Ecuador',
    '742' => 'French Guiana (French Department of)',
    '744' => 'Paraguay (Republic of)',
    '746' => 'Suriname (Republic of)',
    '748' => 'Uruguay (Eastern Republic of)',
);

sub zone_name { $codehash{$_[0]} }

=head1 NAME

HTTP::MobileAgent::Plugin::RoamingZone::CodeHash - 国番号と国名のリスト


=head1 SYNOPSIS

    use HTTP::MobileAgent::Plugin::RoamingZone::CodeHash;

    my $name = HTTP::MobileAgent::Plugin::RoamingZone::CodeHash::zone_name( $code );



=head1 METHODS

=over

=item C<< zone_name >>

=back

=cut

1;
