use Cro::HTTP::Log::File;
use Cro::HTTP::Server;
use Routes;

my Cro::Service $http = Cro::HTTP::Server.new(
    http => <1.1>,
    host => %*ENV<ROUTER_PROJECT_HOST> ||
        die("Missing ROUTER_PROJECT_HOST in environment"),
    port => %*ENV<ROUTER_PROJECT_PORT> ||
        die("Missing ROUTER_PROJECT_PORT in environment"),
    application => routes(),
    after => [
        Cro::HTTP::Log::File.new(logs => $*OUT, errors => $*ERR)
    ]
);
$http.start;
say "Listening at http://%*ENV<ROUTER_PROJECT_HOST>:%*ENV<ROUTER_PROJECT_PORT>";
react {
    whenever signal(SIGINT) {
        say "Shutting down...";
        $http.stop;
        done;
    }
}
