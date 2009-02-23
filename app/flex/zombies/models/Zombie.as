package zombies.models {
  import org.restfulx.models.RxModel;
  
  [Resource(name="zombies")]
  [Bindable]
  public class Zombie extends RxModel {
    public static const LABEL:String = "type";

    public var type:String = "";

    [BelongsTo]
    public var person:Person;

    public function Zombie() {
      super(LABEL);
    }
  }
}
