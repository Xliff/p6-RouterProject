use Cro::HTTP::Router;

use Common;

sub routes3 is export {
  route {
    get ->            { say-route(&?ROUTINE) }
    get -> 'we'       { say-route(&?ROUTINE) }
    get -> '3', 'see' { say-route(&?ROUTINE) }
  }
}
