package;
import php.Lib;
import php.Global;
import php.Const;
import libx.router.Router;

class Main {
  static function main() {
    // Utilize the composer autoload facilities
    Global.require_once(Const.__DIR__ + '/../../vendor/autoload.php');
    var router = new Router();
    router.get('/', () -> {
      Lib.println("In the GET request!");
    });
    router.match('GET|POST', '/article/(\\w+)', (article:String) -> {
      Lib.println("Path: " + router.getCurrentUri() + " Viewing article: " + article);
    });
    router.run();
  }
}