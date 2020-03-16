use Cro::HTTP::Router;

use Common;

sub routes1 is export {
  route {
    get ->                { say-route(&?ROUTINE) }
    get -> '2'            { say-route(&?ROUTINE) }
    get -> 'two', 'three' { say-route(&?ROUTINE) }
  }
}
