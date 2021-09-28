package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxFramesCollection;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	public function new(w:Int = 408, l:Int = 393)
	{
		super(0, 0);
		loadGraphic(AssetPaths.BOYFRIEND__png, true, w, l);
		screenCenter();
		animation.add("idle", [120], 7, true);
		animation.play("idle");
	}

	override function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.UP)
		{
			FlxG.sound.playMusic(AssetPaths.a__ogg, 1, false);
			width = 369;
			height = 446;
		}

		if (FlxG.keys.justPressed.DOWN)
		{
			FlxG.sound.playMusic(AssetPaths.o__ogg, 1, false);
		}

		if (FlxG.keys.justPressed.RIGHT)
		{
			FlxG.sound.playMusic(AssetPaths.i__ogg, 1, false);
		}

		if (FlxG.keys.justPressed.LEFT)
		{
			FlxG.sound.playMusic(AssetPaths.e__ogg, 1, false);
		}

		if (FlxG.keys.pressed.UP) {}

		super.update(elapsed);
	}
}
