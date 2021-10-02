package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.ui.FlxButton;
import openfl.text.Font;
import openfl.text.TextField;
import openfl.text.TextFormat;

class LoadingState extends FlxSubState
{
	override public function create()
	{
		final text = new TextField();
		text.defaultTextFormat = new TextFormat("Open Sans", 24, 0xffffffff);
		text.embedFonts = true;
		text.text = "Loading";
		text.width = 109;
		text.x = 0;
		text.y = 0;
		super.create();
	}

	override public function update(elapsed:Float)
	{
		FlxG.switchState(new PlayState());
	}
}
