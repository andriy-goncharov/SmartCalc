package muzzle
{
	import flash.display.Sprite;
	import flash.text.Font;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import flashx.textLayout.formats.TextAlign;
	
	public class Display extends Sprite
	{	
		
		protected const MAX_COL_SIMB_BIG:int = 16;
		protected const MAX_COL_SIMB_MIDL:int = 20;
		protected const MAX_COL_SIMB_All:int = 32;
		public static const IDENT:int = 10;
		
		
		[Embed(source="muzzle/fonts/Crystal.ttf", fontName ="Crystal",fontStyle="normal", fontWeight="normal", embedAsCFF="false")]//, unicodeRange="U+0030-U+003")]
		private static const fontCrystal:Class;
		[Embed(source="muzzle/fonts/AnasthesiaItalic.ttf", fontName ="AnasthesiaItalic",fontStyle="normal", fontWeight="normal", embedAsCFF="false")]//, unicodeRange="U+0030-U+003")]
		private static const fontAnasthesiaItalic:Class;
		[Embed(source="muzzle/fonts/DiodesLight.ttf", fontName ="DiodesLight",fontStyle="normal", fontWeight="normal", embedAsCFF="false")]//, unicodeRange="U+0030-U+003")]
		private static const fontDiodesLight:Class;
		[Embed(source="muzzle/fonts/Emulator.ttf", fontName ="Emulator",fontStyle="normal", fontWeight="normal", embedAsCFF="false")]//, unicodeRange="U+0030-U+003")]
		private static const fontEmulator:Class;
		
		private var _digit:String;
		private var txtDisplay:TextField;
		private var upperDisplay:TextField;
		private var format:TextFormat;
		private var formatForUppTxt:TextFormat;
		public function Display() 
		{
			Font.registerFont(fontCrystal);
			Font.registerFont(fontAnasthesiaItalic);
			Font.registerFont(fontDiodesLight);
			Font.registerFont(fontEmulator);
			this.graphics.lineStyle(3,0xC0C0C0,1);
			this.graphics.drawRect(IDENT,IDENT,Toolbar.HEIGHT_BOTT * 10 - IDENT,Toolbar.WIDTH_BOTT+IDENT * 7);
			
			txtDisplay = new TextField();
			txtDisplay.width = Toolbar.HEIGHT_BOTT * 10 - IDENT;
			txtDisplay.height = Toolbar.WIDTH_BOTT;
			txtDisplay.x = IDENT;
			txtDisplay.y = IDENT*5;
			txtDisplay.multiline = false;
			txtDisplay.embedFonts = true;
			txtDisplay.selectable = false;
			txtDisplay.border = true;
			txtDisplay.autoSize = TextAlign.RIGHT;
			txtDisplay.maxChars = MAX_COL_SIMB_All;
			
			format = new TextFormat();
			setFont(5);
			format.color = 0x000000;
			
			 
			txtDisplay.defaultTextFormat = format;
			
			txtDisplay.text = "0";
			
			addChild(txtDisplay);
			
			
			////////////// Экран текущего результата  /////////////////////////
			
			
			upperDisplay = new TextField();
			upperDisplay.width  = IDENT;
			upperDisplay.embedFonts = true;
			upperDisplay.selectable = false;
			upperDisplay.border = true;
			upperDisplay.autoSize = TextAlign.RIGHT;
			upperDisplay.y = IDENT;
			upperDisplay.x = IDENT;
			upperDisplay.width = Toolbar.HEIGHT_BOTT * 10 - IDENT;

			
			formatForUppTxt = new TextFormat();
			formatForUppTxt.color = 0x000000;
			formatForUppTxt.font = "Crystal";
			formatForUppTxt.size = 27;
			
			upperDisplay.defaultTextFormat = formatForUppTxt;
			addChild(upperDisplay);
			clearUppDisp();
			
		}
		
		
		public function get digit():String
		{
			_digit = txtDisplay.text;
			return _digit;
		}
		
		public function set digit(value:String):void
		{
			if(isCorrect())
			{
				txtDisplay.text = value;	
			}
			fontSizeChange(value.length);
		}
		
		public function addDigit(value:String):void
		{
			if (isCorrect())
			{
				
				if (txtDisplay.text == "0" || txtDisplay.text == "ERROR") 
				{
					txtDisplay.text = value;
				}else{
					txtDisplay.appendText(value);	
				}
				fontSizeChange(txtDisplay.text.length);
			}
		}
		
		public function delSimb():void
		{
			txtDisplay.text = txtDisplay.text.substr(0,txtDisplay.length - 1);
			if (txtDisplay.length == 0) 
			{
				this.digit = '0';
			}
			fontSizeChange(txtDisplay.text.length);
		}
		
		private function isCorrect():Boolean
		{
			if (txtDisplay.length < MAX_COL_SIMB_All) 
			{
				return true;
				
			}else{
				
				ShowError();				
				return false;
			}
		}
		
		private function ShowError():void
		{
			txtDisplay.text = "ERROR";
			fontSizeChange(txtDisplay.text.length);
		}
		
		public function setFont(Num:int):void
		{
			switch(Num)
			{
				case 1:
				{
					format.font = "AnasthesiaItalic";
					format.size = 70;
					break;	
				}
				case 2:
				{
					format.font = "DiodesLight";
					format.size = 80;
					break;
				}
				case 3:
				{
					format.font = "Emulator";
					format.size = 70;
					break;					
				}
					
				default:
				{
					format.font = "Crystal";
					format.size = 105;
					break;
				}
			}
		}
		
		private function fontSizeChange(colsimb:int):void //////////////////// поменять на что-то поумней....
		{
			if (colsimb < MAX_COL_SIMB_BIG) 
			{
				format.size = 105;
				txtDisplay.y = IDENT*5;
				txtDisplay.setTextFormat(format);
			}
			else if ((colsimb >= MAX_COL_SIMB_BIG) && (colsimb < MAX_COL_SIMB_MIDL) ) 
			{
				format.size = 75;
				txtDisplay.y = IDENT*8;
				txtDisplay.setTextFormat(format);
			}
			else if (colsimb >= MAX_COL_SIMB_MIDL) 
			{
				format.size = 55;
				txtDisplay.y = IDENT*10;
				txtDisplay.setTextFormat(format);
			}
					
			
		}
		
		public function clearUppDisp():void
		{
			upperDisplay.text = '';
		}
		
		public function setTxtUppDisp(txt:String):void
		{
			upperDisplay.text = txt; 
		}
		public function addTxtUppDisp(txt:String):void
		{
 			upperDisplay.appendText(txt+' ');
		}
	}
}