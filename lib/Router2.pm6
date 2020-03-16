use Cro::HTTP::Router;

use Common;

sub routes2 is export {
  route {
    get ->                { say-route(&?BLOCK) }
    get -> '4'            { say-route(&?BLOCK) }
    get -> 'six', 'eight' { say-route(&?BLOCK) }
  }
}
