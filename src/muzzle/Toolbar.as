package muzzle
{
	import calculation.Calculation;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	
	public class Toolbar extends Sprite
	{
		public static const HEIGHT_BOTT:int = 96;
		public static const WIDTH_BOTT:int = 74;
		private var cmdMC:Sprite;
		private var cmdMR:Sprite;
		private var cmdMS:Sprite;
		private var cmdMPlus:Sprite;
		private var cmdMMinus:Sprite;
		private var cmdInv:Sprite;
		private var cmdLn:Sprite;
		private var cmdLeft_Bkt:Sprite;
		private var cmdRight_Bkt:Sprite;
		private var cmdDel:Sprite;
		private var cmdCE:Sprite;
		private var cmdC:Sprite;
		private var cmdNegat:Sprite;
		private var cmdSQR:Sprite;
		private var cmdInt:Sprite;
		private var cmdSinH:Sprite;
		private var cmdSin:Sprite;
		private var cmdXin2:Sprite;
		private var cmdFact:Sprite;
		private var cmd7:Sprite;
		private var cmd8:Sprite;
		private var cmd9:Sprite;
		private var cmdDivision:Sprite;
		private var cmdPercent:Sprite;
		private var cmdDms:Sprite;
		private var cmdCosH:Sprite;
		private var cmdCos:Sprite;
		private var cmdXinY:Sprite;
		private var cmdXsqrY:Sprite;
		private var cmd4:Sprite;
		private var cmd5:Sprite;
		private var cmd6:Sprite;
		private var cmdMult:Sprite;
		private var cmd1delX:Sprite;
		private var cmdPi:Sprite;
		private var cmdTanH:Sprite;
		private var cmdTan:Sprite;
		private var cmdXin3:Sprite;
		private var cmdExchang:Sprite;
		private var cmd1:Sprite;
		private var cmd2:Sprite;
		private var cmd3:Sprite;
		private var cmdMinus:Sprite;
		private var cmdEqual:Sprite;
		private var cmdF_E:Sprite;
		private var cmdExp:Sprite;
		private var cmdMod:Sprite;
		private var cmdLog:Sprite;
		private var cmd10x:Sprite;
		private var cmd0:Sprite;
		private var cmdPoint:Sprite;
		private var cmdPlus:Sprite;
		private var cmdInvRun:Sprite;
		private var cmdEinX:Sprite;
		private var cmdFrac:Sprite;
		private var cmdSinH1:Sprite;
		private var cmdSin1:Sprite;
		private var cmdDeg:Sprite;
		private var cmdCosH1:Sprite;
		private var cmdCos1:Sprite;
		private var cmd2Pi:Sprite;
		private var cmdTanH1:Sprite;
		private var cmdTan1:Sprite;
		
		
		private var Xpos:int;
		private var Ypos:int;
		private var numButton:int;
		
		private var handler:Calculation;
		
	
		

		
		public function Toolbar()
		{
			
			Xpos = HEIGHT_BOTT * 5;
			Ypos = 0;
			
			handler  = new Calculation();
			
			cmdMC = new Sprite();
			cmdMC.addChild(Button.CreatButton(++numButton));
			cmdMC.x = Xpos + Display.IDENT; 
			cmdMC.y = Ypos;		
			addChild(cmdMC);
			
			cmdMR = new Sprite();
			cmdMR.addChild(Button.CreatButton(++numButton));
			cmdMR.x = Xpos += HEIGHT_BOTT + Display.IDENT;
			cmdMR.y = Ypos;		
			addChild(cmdMR);
			
			cmdMS = new Sprite();
			cmdMS.addChild(Button.CreatButton(++numButton));
			cmdMS.x = Xpos += HEIGHT_BOTT ;
			cmdMS.y = Ypos;	
			addChild(cmdMS);
			
			cmdMPlus = new Sprite();
			cmdMPlus.addChild(Button.CreatButton(++numButton));
			cmdMPlus.x = Xpos += HEIGHT_BOTT;
			cmdMPlus.y = Ypos;		
			addChild(cmdMPlus);
			
			cmdMMinus = new Sprite();
			cmdMMinus.addChild(Button.CreatButton(++numButton));
			cmdMMinus.x = Xpos += HEIGHT_BOTT;
			cmdMMinus.y = Ypos;	
			
			addChild(cmdMMinus);
			
			cmdInv = new Sprite();
			cmdInv.addChild(Button.CreatButton(++numButton));
			cmdInv.x = Xpos =  Display.IDENT + HEIGHT_BOTT;
			cmdInv.y = Ypos = WIDTH_BOTT;	
			cmdInv.addEventListener(MouseEvent.CLICK,replaceBooton);
			addChild(cmdInv);
			 
			cmdLn = new Sprite();
			cmdLn.addChild(Button.CreatButton(++numButton));
			cmdLn.x = Xpos += HEIGHT_BOTT;
			cmdLn.y = Ypos;	
			addChild(cmdLn);
			
			cmdLeft_Bkt = new Sprite();
			cmdLeft_Bkt.addChild(Button.CreatButton(++numButton));
			cmdLeft_Bkt.x = Xpos += HEIGHT_BOTT;
			cmdLeft_Bkt.y = Ypos;
			cmdLeft_Bkt.addEventListener(MouseEvent.CLICK,fcmdLeft_Bkt)
			addChild(cmdLeft_Bkt);
			
			
			cmdRight_Bkt = new Sprite();
			cmdRight_Bkt.addChild(Button.CreatButton(++numButton));
			cmdRight_Bkt.x = Xpos += HEIGHT_BOTT;
			cmdRight_Bkt.y = Ypos;
			cmdRight_Bkt.addEventListener(MouseEvent.CLICK,fcmdRight_Bkt)
			addChild(cmdRight_Bkt);
			
			cmdDel = new Sprite();
			cmdDel.addChild(Button.CreatButton(++numButton));
			cmdDel.x = Xpos += HEIGHT_BOTT;
			cmdDel.y = Ypos;
			cmdDel.addEventListener(MouseEvent.CLICK,fcmdDel);
			addChild(cmdDel);
			
			cmdCE = new Sprite();
			cmdCE.addChild(Button.CreatButton(++numButton));
			cmdCE.x = Xpos += HEIGHT_BOTT;
			cmdCE.y = Ypos;	
			cmdCE.addEventListener(MouseEvent.CLICK,fcmdCE);
			addChild(cmdCE);			
			
			cmdC = new Sprite();
			cmdC.addChild(Button.CreatButton(++numButton));
			cmdC.x = Xpos += HEIGHT_BOTT;
			cmdC.y = Ypos;	
			addChild(cmdC);
			
			cmdNegat = new Sprite();
			cmdNegat.addChild(Button.CreatButton(++numButton));
			cmdNegat.x = Xpos += HEIGHT_BOTT;
			cmdNegat.y = Ypos;	
			cmdNegat.addEventListener(MouseEvent.CLICK,fcmdNegat);
			addChild(cmdNegat);
			
			cmdSQR = new Sprite();
			cmdSQR.addChild(Button.CreatButton(++numButton));
			cmdSQR.x = Xpos += HEIGHT_BOTT;
			cmdSQR.y = Ypos;	
			addChild(cmdSQR);
			
			cmdInt = new Sprite();
			cmdInt.addChild(Button.CreatButton(++numButton));
			cmdInt.x = Xpos = Display.IDENT;
			cmdInt.y = Ypos += WIDTH_BOTT;	
			addChild(cmdInt);
			
			cmdSinH = new Sprite();
			cmdSinH.addChild(Button.CreatButton(++numButton));
			cmdSinH.x = Xpos += HEIGHT_BOTT;
			cmdSinH.y = Ypos;
			addChild(cmdSinH);
			
			cmdSin = new Sprite();
			cmdSin.addChild(Button.CreatButton(++numButton));
			cmdSin.x = Xpos += HEIGHT_BOTT;
			cmdSin.y = Ypos;
			cmdSin.addEventListener(MouseEvent.CLICK,fcmdSin);
			addChild(cmdSin);
			
			cmdXin2 = new Sprite();
			cmdXin2.addChild(Button.CreatButton(++numButton));
			cmdXin2.x = Xpos += HEIGHT_BOTT;
			cmdXin2.y = Ypos;	
			addChild(cmdXin2);
			
			cmdFact = new Sprite();
			cmdFact.addChild(Button.CreatButton(++numButton));
			cmdFact.x = Xpos += HEIGHT_BOTT;
			cmdFact.y = Ypos;	
			addChild(cmdFact);
			
			cmd7 = new Sprite();
			cmd7.addChild(Button.CreatButton(++numButton));
			cmd7.x = Xpos += HEIGHT_BOTT;
			cmd7.y = Ypos;
			cmd7.addEventListener(MouseEvent.CLICK,fcmd7);
			addChild(cmd7);
			
			cmd8 = new Sprite();
			cmd8.addChild(Button.CreatButton(++numButton));
			cmd8.x = Xpos += HEIGHT_BOTT;
			cmd8.y = Ypos;
			cmd8.addEventListener(MouseEvent.CLICK,fcmd8);
			addChild(cmd8);
			
			cmd9 = new Sprite();
			cmd9.addChild(Button.CreatButton(++numButton));
			cmd9.x = Xpos += HEIGHT_BOTT;
			cmd9.y = Ypos;	
			cmd9.addEventListener(MouseEvent.CLICK,fcmd9);
			addChild(cmd9);
			
			cmdDivision = new Sprite();
			cmdDivision.addChild(Button.CreatButton(++numButton));
			cmdDivision.x = Xpos += HEIGHT_BOTT;
			cmdDivision.y = Ypos;
			cmdDivision.addEventListener(MouseEvent.CLICK,fcmdDivision);
			addChild(cmdDivision);
			
		
			cmdPercent = new Sprite();
			cmdPercent.addChild(Button.CreatButton(++numButton));
			cmdPercent.x = Xpos += HEIGHT_BOTT;
			cmdPercent.y = Ypos;	
			addChild(cmdPercent);
			
			
			cmdDms = new Sprite();
			cmdDms.addChild(Button.CreatButton(++numButton));
			cmdDms.x = Xpos = Display.IDENT;
			cmdDms.y = Ypos += WIDTH_BOTT;	
			addChild(cmdDms);
			
			
			cmdCosH = new Sprite();
			cmdCosH.addChild(Button.CreatButton(++numButton));
			cmdCosH.x = Xpos += HEIGHT_BOTT;
			cmdCosH.y = Ypos;	
			addChild(cmdCosH);
			
			
			cmdCos = new Sprite();
			cmdCos.addChild(Button.CreatButton(++numButton));
			cmdCos.x = Xpos += HEIGHT_BOTT;
			cmdCos.y = Ypos;	
			addChild(cmdCos);
			
			cmdXinY = new Sprite();
			cmdXinY.addChild(Button.CreatButton(++numButton));
			cmdXinY.x = Xpos += HEIGHT_BOTT;
			cmdXinY.y = Ypos;	
			addChild(cmdXinY);
			
			cmdXsqrY = new Sprite();
			cmdXsqrY.addChild(Button.CreatButton(++numButton));
			cmdXsqrY.x = Xpos += HEIGHT_BOTT;
			cmdXsqrY.y = Ypos;	
			addChild(cmdXsqrY);
			
			cmd4 = new Sprite();
			cmd4.addChild(Button.CreatButton(++numButton));
			cmd4.x = Xpos += HEIGHT_BOTT;
			cmd4.y = Ypos;	
			cmd4.addEventListener(MouseEvent.CLICK,fcmd4);
			addChild(cmd4);
			
			cmd5 = new Sprite();
			cmd5.addChild(Button.CreatButton(++numButton));
			cmd5.x = Xpos += HEIGHT_BOTT;
			cmd5.y = Ypos;	
			cmd5.addEventListener(MouseEvent.CLICK,fcmd5);
			addChild(cmd5);
			
			cmd6 = new Sprite();
			cmd6.addChild(Button.CreatButton(++numButton));
			cmd6.x = Xpos += HEIGHT_BOTT;
			cmd6.y = Ypos;	
			cmd6.addEventListener(MouseEvent.CLICK,fcmd6);
			addChild(cmd6);
			
			cmdMult = new Sprite();
			cmdMult.addChild(Button.CreatButton(++numButton));
			cmdMult.x = Xpos += HEIGHT_BOTT;
			cmdMult.y = Ypos;
			cmdMult.addEventListener(MouseEvent.CLICK,fcmdMult);
			addChild(cmdMult);
			
			cmd1delX = new Sprite();
			cmd1delX.addChild(Button.CreatButton(++numButton));
			cmd1delX.x = Xpos += HEIGHT_BOTT;
			cmd1delX.y = Ypos;	
			addChild(cmd1delX);
			
			cmdPi = new Sprite();
			cmdPi.addChild(Button.CreatButton(++numButton));
			cmdPi.x = Xpos = Display.IDENT;
			cmdPi.y = Ypos += WIDTH_BOTT;	
			addChild(cmdPi);
			
			cmdTanH = new Sprite();
			cmdTanH.addChild(Button.CreatButton(++numButton));
			cmdTanH.x = Xpos += HEIGHT_BOTT;
			cmdTanH.y = Ypos;	
			addChild(cmdTanH);
			
			cmdTan = new Sprite();
			cmdTan.addChild(Button.CreatButton(++numButton));
			cmdTan.x = Xpos += HEIGHT_BOTT;
			cmdTan.y = Ypos;	
			addChild(cmdTan);
			
			cmdXin3 = new Sprite();
			cmdXin3.addChild(Button.CreatButton(++numButton));
			cmdXin3.x = Xpos += HEIGHT_BOTT;
			cmdXin3.y = Ypos;	
			addChild(cmdXin3);
			
			cmdExchang = new Sprite();
			cmdExchang.addChild(Button.CreatButton(++numButton));
			cmdExchang.x = Xpos += HEIGHT_BOTT;
			cmdExchang.y = Ypos;	
			addChild(cmdExchang);
			
			cmd1 = new Sprite();
			cmd1.addChild(Button.CreatButton(++numButton));
			cmd1.x = Xpos += HEIGHT_BOTT;
			cmd1.y = Ypos;
			cmd1.addEventListener(MouseEvent.CLICK,fcmd1);
			addChild(cmd1);
			
			cmd2 = new Sprite();
			cmd2.addChild(Button.CreatButton(++numButton));
			cmd2.x = Xpos += HEIGHT_BOTT;
			cmd2.y = Ypos;
			cmd2.addEventListener(MouseEvent.CLICK,fcmd2);
			addChild(cmd2);
			
			cmd3 = new Sprite();
			cmd3.addChild(Button.CreatButton(++numButton));
			cmd3.x = Xpos += HEIGHT_BOTT;
			cmd3.y = Ypos;	
			cmd3.addEventListener(MouseEvent.CLICK,fcmd3);
			addChild(cmd3);
			
			cmdMinus = new Sprite();
			cmdMinus.addChild(Button.CreatButton(++numButton));
			cmdMinus.x = Xpos += HEIGHT_BOTT;
			cmdMinus.y = Ypos;
			cmdMinus.addEventListener(MouseEvent.CLICK,fcmdMinus);
			addChild(cmdMinus);
			
			
			cmdEqual = new Sprite();
			cmdEqual.addChild(Button.CreatButton(++numButton));
			cmdEqual.x = Xpos += HEIGHT_BOTT;
			cmdEqual.y = Ypos;	
			cmdEqual.addEventListener(MouseEvent.CLICK,fcmdEqual);
			addChild(cmdEqual);
			
			cmdF_E = new Sprite();
			cmdF_E.addChild(Button.CreatButton(++numButton));
			cmdF_E.x = Xpos = Display.IDENT;
			cmdF_E.y = Ypos += WIDTH_BOTT;	
			addChild(cmdF_E);
			
			
			cmdExp = new Sprite();
			cmdExp.addChild(Button.CreatButton(++numButton));
			cmdExp.x = Xpos += HEIGHT_BOTT;
			cmdExp.y = Ypos;	
			addChild(cmdExp);
			
			cmdMod = new Sprite();
			cmdMod.addChild(Button.CreatButton(++numButton));
			cmdMod.x = Xpos += HEIGHT_BOTT;
			cmdMod.y = Ypos;	
			addChild(cmdMod);
			
			cmdLog = new Sprite();
			cmdLog.addChild(Button.CreatButton(++numButton));
			cmdLog.x = Xpos += HEIGHT_BOTT;
			cmdLog.y = Ypos;	
			addChild(cmdLog);
			
			cmd10x = new Sprite();
			cmd10x.addChild(Button.CreatButton(++numButton));
			cmd10x.x = Xpos += HEIGHT_BOTT;
			cmd10x.y = Ypos;	
			addChild(cmd10x);
			
			cmd0 = new Sprite();
			cmd0.addChild(Button.CreatButton(++numButton));
			cmd0.x = Xpos += HEIGHT_BOTT;
			cmd0.y = Ypos;	
			cmd0.addEventListener(MouseEvent.CLICK,fcmd0);
			addChild(cmd0);
			
			cmdPoint = new Sprite();
			cmdPoint.addChild(Button.CreatButton(++numButton));
			cmdPoint.x = Xpos += 2*(HEIGHT_BOTT);
			cmdPoint.y = Ypos;
			cmdPoint.addEventListener(MouseEvent.CLICK,fcmdPoint);
			addChild(cmdPoint);
			
			cmdPlus = new Sprite();
			cmdPlus.addChild(Button.CreatButton(++numButton));
			cmdPlus.x = Xpos += HEIGHT_BOTT;
			cmdPlus.y = Ypos;
			cmdPlus.addEventListener(MouseEvent.CLICK,fcmdPlus)
			addChild(cmdPlus);
			
			
			////////////////////////////// кнопки для INV ////////////////////
			
			
			cmdInvRun = new Sprite();
			cmdInvRun.addChild(Button.CreatButton(++numButton));
			cmdInvRun.x = cmdInv.x;
			cmdInvRun.y = cmdInv.y;
			cmdInvRun.visible = false;
			cmdInvRun.addEventListener(MouseEvent.CLICK,replaceBooton);
			addChild(cmdInvRun);
			
		
			cmdEinX = new Sprite();
			cmdEinX.addChild(Button.CreatButton(++numButton));
			cmdEinX.x = cmdLn.x;
			cmdEinX.y = cmdLn.y;
			cmdEinX.visible = false;
			addChild(cmdEinX);
			
			cmdFrac = new Sprite();
			cmdFrac.addChild(Button.CreatButton(++numButton));
			cmdFrac.x = cmdInt.x;
			cmdFrac.y = cmdInt.y;
			cmdFrac.visible = false;
			addChild(cmdFrac);
			
			cmdSinH1 = new Sprite();
			cmdSinH1.addChild(Button.CreatButton(++numButton));
			cmdSinH1.x = cmdSinH.x;
			cmdSinH1.y = cmdSinH.y;
			cmdSinH1.visible = false;
			addChild(cmdSinH1);
			
			cmdSin1 = new Sprite();
			cmdSin1.addChild(Button.CreatButton(++numButton));
			cmdSin1.x = cmdSin.x;
			cmdSin1.y = cmdSin.y;
			cmdSin1.visible = false;
			addChild(cmdSin1);
			
			cmdDeg = new Sprite();
			cmdDeg.addChild(Button.CreatButton(++numButton));
			cmdDeg.x = cmdDms.x;
			cmdDeg.y = cmdDms.y;
			cmdDeg.visible = false;
			addChild(cmdDeg);
			
			cmdCosH1 = new Sprite();
			cmdCosH1.addChild(Button.CreatButton(++numButton));
			cmdCosH1.x = cmdCosH.x;
			cmdCosH1.y = cmdCosH.y;
			cmdCosH1.visible = false;
			addChild(cmdCosH1);
			
			cmdCos1 = new Sprite();
			cmdCos1.addChild(Button.CreatButton(++numButton));
			cmdCos1.x = cmdCos.x;
			cmdCos1.y = cmdCos.y;
			cmdCos1.visible = false;
			addChild(cmdCos1);
			
			cmd2Pi = new Sprite();
			cmd2Pi.addChild(Button.CreatButton(++numButton));
			cmd2Pi.x = cmdPi.x;
			cmd2Pi.y = cmdPi.y;
			cmd2Pi.visible = false;
			addChild(cmd2Pi);
			
			cmdTanH1 = new Sprite();
			cmdTanH1.addChild(Button.CreatButton(++numButton));
			cmdTanH1.x = cmdTanH.x;
			cmdTanH1.y = cmdTanH.y;
			cmdTanH1.visible = false;
			addChild(cmdTanH1);
			
			cmdTan1 = new Sprite();
			cmdTan1.addChild(Button.CreatButton(++numButton));
			cmdTan1.x = cmdTan.x;
			cmdTan1.y = cmdTan.y;
			cmdTan1.visible = false;
			addChild(cmdTan1);
			
			
			
			/////////////////////// кнопки для INV ////////////////
		
			this.y = 160; 
			
			
		}
		
		////////////////////////// обработчики кнопок //////////////////////
		
		
		private function replaceBooton(e:MouseEvent):void
		{
			cmdInvRun.visible = !(cmdInvRun.visible );
			cmdEinX.visible = !(cmdEinX.visible);
			cmdFrac.visible = !(cmdFrac.visible);
			cmdSinH1.visible = !(cmdSinH1.visible);
			cmdSin1.visible = !(cmdSin1.visible);
			cmdDeg.visible = !(cmdDeg.visible);
			cmdCosH1.visible = !(cmdCosH1.visible);
			cmdCos1.visible = !(cmdCos1.visible);
			cmd2Pi.visible = !(cmd2Pi.visible);
			cmdTanH1.visible = !(cmdTanH1.visible);
			cmdTan1.visible = !(cmdTan1.visible);
			
		}
		
		
		////////////////// очистка экрана //////////////////
		private function fcmdCE(e:MouseEvent):void
		{
			handler.funcCE();
		}
		
		private function fcmdDel(e:MouseEvent):void
		{
			handler.funcDel();
		}
		
		///////////////// вывод цыфр /////////
		
		private function fcmd1(e:MouseEvent):void
		{
			handler.funcAddingDigit('1');
		}
		
		private function fcmd2(e:MouseEvent):void
		{
			handler.funcAddingDigit('2');
		}
		
		private function fcmd3(e:MouseEvent):void
		{
			handler.funcAddingDigit('3');
		}
		
		private function fcmd4(e:MouseEvent):void
		{
			handler.funcAddingDigit('4');
		}
		
		private function fcmd5(e:MouseEvent):void
		{
			handler.funcAddingDigit('5');
		}
		
		private function fcmd6(e:MouseEvent):void
		{
			handler.funcAddingDigit('6');
		}
		
		private function fcmd7(e:MouseEvent):void
		{
			handler.funcAddingDigit('7');
		}
		
		private function fcmd8(e:MouseEvent):void
		{
			handler.funcAddingDigit('8');
		}
		
		private function fcmd9(e:MouseEvent):void
		{
			handler.funcAddingDigit('9');
		}
		
		private function fcmd0(e:MouseEvent):void
		{
			handler.funcAddingDigit('0');
		}
		private function fcmdPoint(e:MouseEvent):void
		{
			handler.funcPoint();
		}
		/////////////// вывод цыфр /////////////////
		
		
		private function fcmdNegat(e:MouseEvent):void
		{
			handler.funcNegat();
		}
		
		
		
		
		/////////////////// знаки операций /////////////////
		
		private function fcmdPlus(e:MouseEvent):void
		{
			handler.funcArithmetic('+');	
		}
		
		private function fcmdMinus(e:MouseEvent):void
		{
			handler.funcArithmetic('-');
		}
		
		private function fcmdMult(e:MouseEvent):void
		{
			handler.funcArithmetic('*');
		}
		
		private function fcmdDivision(e:MouseEvent):void
		{
			handler.funcArithmetic('/');	
		}
		/////////////////// знаки операций /////////////////
		/////////////////// мат операции   /////////////////
		
		private function fcmdSin(e:MouseEvent):void
		{
			handler.funcMathFunc('sin');
		}
		
		/////////////////// мат операции   /////////////////		
		
		////////////////// скобки //////////////////////////
		////////////////////////////////////////////////////
		////////////////////////////////////////////////////
		private function fcmdLeft_Bkt(e:MouseEvent):void
		{
			handler.funcLeft_Bkt();
		}
		private function fcmdRight_Bkt(e:MouseEvent):void
		{
			handler.funcRight_Bkt();
		}
		////////////////// скобки //////////////////////////
		
		//////////////////// равно //////////////////////////
		private function fcmdEqual(e:MouseEvent):void
		{
			handler.funcEqual();
		}
		
		
	}
}