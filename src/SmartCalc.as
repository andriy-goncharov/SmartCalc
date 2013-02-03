package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import muzzle.Button;
	import muzzle.Display;
	import muzzle.Toolbar;

//	import muzzle.Buttons;
	
	public class SmartCalc extends Sprite
	{
		private var buttons:Toolbar;
		static public var display:Display;
		
		public function SmartCalc()
		{
		
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			buttons = new Toolbar();
			display = new Display();
			
			addChild(display);
			addChild(buttons);
			
			
			/*
			addChild(Button.CreatButton(4));
			addChild(Button.CreatButton(2));
			addChild(Button.CreatButton(6));
			*/
			
		}
	}
}