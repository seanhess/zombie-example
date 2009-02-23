package zombies.models {
  import org.restfulx.collections.ModelsCollection;
  import org.restfulx.models.RxModel;
  
  [Resource(name="people")]
  [Bindable]
  public class Person extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    [HasMany(type="Zombie")]
    public var kills:ModelsCollection;
    
    public function Person() {
      super(LABEL);
    }
  }
}
