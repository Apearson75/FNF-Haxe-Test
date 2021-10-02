package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var player:Player;
	var bf:FlxSprite;
	var refreshButton:FlxButton;

	function clickPlay()
	{
		final loading = new LoadingState();
		openSubState(loading);
	}

	override public function create()
	{
		var whiteSquare = new FlxSprite();
		whiteSquare.makeGraphic(50, 50, FlxColor.WHITE);
		add(whiteSquare);
		whiteSquare.screenCenter();

		player = new Player();
		add(player);

		refreshButton = new FlxButton(0, 0, "Refresh", clickPlay);
		add(refreshButton);
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
