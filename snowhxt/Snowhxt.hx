package snowhxt;

import hxtelemetry.HxTelemetry;
import hxtelemetry.HxTelemetry.Config;

class Snowhxt {

    public var hxt : HxTelemetry;

    public function new( ?_config:Config ) {
        
        if(_config == null) {
            _config = default_config();
        }

        hxt = new HxTelemetry(_config);

    } //new

    public static function default_config() : Config {

        var _config = new Config();
            _config.allocations = true;
            _config.app_name = 'snow app';
            _config.cpu_usage = true;
            _config.profiler = true;
            _config.trace = true;

        return _config;

    } //default_config

    public function update() {

        hxt.advance_frame();

    } //update

}