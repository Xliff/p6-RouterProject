use Cro::HTTP::Router;

use Router1;
use Router2;
use Router3;

sub routes() is export {
    route {
      my @routes = (
        routes1 => routes1(),
        routes2 => routes2(),
        routes3 => routes3()
      );

      say @routes.gist;

      include |@routes;
    }
}
