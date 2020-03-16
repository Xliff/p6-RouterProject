use Cro::HTTP::Router;

unit package Common;

sub say-route ($r) is export {
  content 'text/plain', $r.signature.params.map( *.gist.Str ).join(', ');
}
