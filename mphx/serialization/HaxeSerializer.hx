package mphx.serialization;

/*
	HaxeSerializer currently uses the static serialization methods provided by Haxe.
*/

class HaxeSerializer implements mphx.serialization.ISerializer
{

	public function new (){

	}
	public function serialize (object:Dynamic):String
	{
		return haxe.Serializer.run(object);
	}
	public function deserialize (string:String):Dynamic
	{
		return haxe.Unserializer.run(string);
	}
}