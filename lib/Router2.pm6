use Cro::HTTP::Router;

use Common;

sub routes2 is export {
  route {
    get ->                { say-route(&?ROUTINE) }
    get -> '4'            { say-route(&?ROUTINE) }
    get -> 'six', 'eight' { say-route(&?ROUTINE) }
  }
}
