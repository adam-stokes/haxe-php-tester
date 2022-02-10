package libx.router;

import php.*;

@:native('Bramus\\Router\\Router')
@:noCompletion extern class Router {
    public function before(methods: String, pattern: String, callback: Dynamic): Void;
    public function match(methods: String, pattern: String, callback: Dynamic): Void;
    public function all(pattern: String, callback: Dynamic): Void;
    public function get(pattern: String, callback: Dynamic): Void;
    public function post(pattern: String, callback: Dynamic): Void;
    public function patch(pattern: String, callback: Dynamic): Void;
    public function delete(pattern: String, callback: Dynamic): Void;
    public function put(pattern: String, callback: Dynamic): Void;
    public function options(pattern: String, callback: Dynamic): Void;
    public function mount(baseRoute: String, callback: Dynamic): Void;
    public function run(?callback: Null<Dynamic>): Bool;
    public function getRequestHeaders(): Array<Dynamic>;
    public function getRequestMethod(): String;
    public function setNamespace(namespace: String): Void;
    public function getNamespace(): String;
    public function trigger404(match: Null<String>): Void;
    public function getCurrentUri(): String;
    public function getBasePath(): String;
    public function setBasePath(serverBasePath: String): Void;
    public function new():Void;
}