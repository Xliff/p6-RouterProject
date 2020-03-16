use Cro::HTTP::Router;

use Common;

sub routes1 is export {
  route {
    before                { not-found if %hidden<routes1> }
    get ->                { say-route(&?BLOCK) }
    get -> '2'            { say-route(&?BLOCK) }
    get -> 'two', 'three' { say-route(&?BLOCK) }
  }
}
