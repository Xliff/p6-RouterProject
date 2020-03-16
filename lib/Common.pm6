use Cro::HTTP::Router;

unit package Common;

our %hidden is export;

sub say-route ($r) is export {
  content 'text/plain', $r.signature.params.map( *.gist.Str ).join(', ');
}
