package zombies.models {
  import mx.utils.ObjectUtil;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="zombies")]
  [Bindable]
  public class Zombie extends RxModel {
    public static const LABEL:String = "type";

    public var type:String = "";

    [BelongsTo(referAs="kills")]
    public var killer:Person;

    public function Zombie() {
      super(LABEL);
    }
    
    override public function toString():String
    {
    	return ObjectUtil.toString(this);
    }
  }
}
