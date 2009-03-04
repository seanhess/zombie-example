package zombies.models {
  import org.restfulx.models.RxModel;
  
  [Resource(name="zombies")]
  [Bindable]
  public class Zombie extends RxModel {
    public var type:String = "";

    [BelongsTo]
    public var person:Person;

    override public function toString():String
    {
    	return "Z: " + type;
    }
    
  }
}
