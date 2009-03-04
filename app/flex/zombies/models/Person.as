package zombies.models {
  import org.restfulx.collections.ModelsCollection;
  import org.restfulx.models.RxModel;
  
  [Resource(name="people")]
  [Bindable]
  public class Person extends RxModel {
    public var name:String = "";

    [HasMany]
    public var zombies:ModelsCollection;
	
	override public function toString():String
	{
		return "Person: " + name + " has killed " + zombies;
	}    
  }
}
