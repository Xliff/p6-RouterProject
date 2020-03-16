use Cro::HTTP::Router;

use Common;

sub routes3 is export {
  route {
    get ->            { say-route(&?BLOCK) }
    get -> 'we'       { say-route(&?BLOCK) }
    get -> '3', 'see' { say-route(&?BLOCK) }
  }
}
