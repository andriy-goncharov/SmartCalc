package muzzle
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	public class Button extends Sprite
	{
		[Embed(source="muzzle/libButtons/(.PNG")]
		static private var imgLeft_parenthesis:Class;		
		[Embed(source="muzzle/libButtons/).PNG")]
		static private var imgRight_parenthesis:Class;
		[Embed(source="muzzle/libButtons/0.PNG")]
		static private var img0:Class;
		[Embed(source="muzzle/libButtons/1.PNG")]
		static private var img1:Class;
		[Embed(source="muzzle/libButtons/10x.PNG")]
		static private var img10x:Class;
		[Embed(source="muzzle/libButtons/1divX.PNG")]
		static private var img1delx:Class;
		[Embed(source="muzzle/libButtons/2.PNG")]
		static private var img2:Class;
		[Embed(source="muzzle/libButtons/2Pi.PNG")]
		static private var img2Pi:Class;
		[Embed(source="muzzle/libButtons/3.PNG")]
		static private var img3:Class;
		[Embed(source="muzzle/libButtons/4.PNG")]
		static private var img4:Class;
		[Embed(source="muzzle/libButtons/5.PNG")]
		static private var img5:Class;
		[Embed(source="muzzle/libButtons/6.PNG")]
		static private var img6:Class;
		[Embed(source="muzzle/libButtons/7.PNG")]
		static private var img7:Class;
		[Embed(source="muzzle/libButtons/8.PNG")]
		static private var img8:Class;
		[Embed(source="muzzle/libButtons/9.PNG")]
		static private var img9:Class;
		[Embed(source="muzzle/libButtons/C.PNG")]
		static private var imgC:Class;
		[Embed(source="muzzle/libButtons/CE.PNG")]
		static private var imgCE:Class;
		[Embed(source="muzzle/libButtons/cos1.PNG")]
		static private var imgCos1:Class;
		[Embed(source="muzzle/libButtons/cos.PNG")]
		static private var imgCos:Class;
		[Embed(source="muzzle/libButtons/cosh1.PNG")]
		static private var imgCosh1:Class;
		[Embed(source="muzzle/libButtons/cosh.PNG")]
		static private var imgCosh:Class;
		[Embed(source="muzzle/libButtons/deg.PNG")]
		static private var imgDeg:Class;
		[Embed(source="muzzle/libButtons/DEL.PNG")]
		static private var imgDEL:Class;
		[Embed(source="muzzle/libButtons/division.PNG")]
		static private var imgDivision:Class;
		[Embed(source="muzzle/libButtons/dms.PNG")]
		static private var imgDms:Class;
		[Embed(source="muzzle/libButtons/EinX.PNG")]
		static private var imgEinX:Class;
		[Embed(source="muzzle/libButtons/equal.PNG")]
		static private var imgEqual:Class;
		[Embed(source="muzzle/libButtons/exchange.PNG")]
		static private var imgExchang:Class;
		[Embed(source="muzzle/libButtons/Exp.PNG")]
		static private var imgExp:Class; 
		[Embed(source="muzzle/libButtons/F_E.PNG")]
		static private var imgF_E:Class;
		[Embed(source="muzzle/libButtons/NFact.PNG")]
		static private var imgFact:Class;
		[Embed(source="muzzle/libButtons/Frac.PNG")]
		static private var imgFrac:Class;
		[Embed(source="muzzle/libButtons/Int.PNG")]
		static private var imgInt:Class;
		[Embed(source="muzzle/libButtons/inv.PNG")]
		static private var imgInv:Class;
		[Embed(source="muzzle/libButtons/invAct.PNG")]
		static private var imgInvRun:Class;
		[Embed(source="muzzle/libButtons/ln.PNG")]
		static private var imgLn:Class;
		[Embed(source="muzzle/libButtons/log.PNG")]
		static private var imgLog:Class;
		[Embed(source="muzzle/libButtons/M-.PNG")]
		static private var imgMMinus:Class;
		[Embed(source="muzzle/libButtons/M+.PNG")]
		static private var imgMPlus:Class;
		[Embed(source="muzzle/libButtons/minus.PNG")]
		static private var imgMinus:Class;
		[Embed(source="muzzle/libButtons/MC.PNG")]
		static private var imgMC:Class;
		[Embed(source="muzzle/libButtons/Mod.PNG")]
		static private var imgMod:Class;
		[Embed(source="muzzle/libButtons/MR.PNG")]
		static private var imgMR:Class;
		[Embed(source="muzzle/libButtons/MS.PNG")]
		static private var imgMS:Class;
		[Embed(source="muzzle/libButtons/mult.PNG")]
		static private var imgMult:Class;
		[Embed(source="muzzle/libButtons/negat.PNG")]
		static private var imgNegat:Class;
		[Embed(source="muzzle/libButtons/NFact.PNG")]
		static private var imgNFact:Class;
		[Embed(source="muzzle/libButtons/percent.PNG")]
		static private var imgPercent:Class;
		[Embed(source="muzzle/libButtons/Pi.PNG")]
		static private var imgPi:Class;
		[Embed(source="muzzle/libButtons/plus.PNG")]
		static private var imgPlus:Class;
		[Embed(source="muzzle/libButtons/point.PNG")]
		static private var imgPoint:Class;
		[Embed(source="muzzle/libButtons/sin1.PNG")]
		static private var imgSin1:Class;
		[Embed(source="muzzle/libButtons/sin.PNG")]
		static private var imgSin:Class;
		[Embed(source="muzzle/libButtons/sinh1.PNG")]
		static private var imgSinh1:Class;
		[Embed(source="muzzle/libButtons/sinh.PNG")]
		static private var imgSinh:Class;
		[Embed(source="muzzle/libButtons/SQR.PNG")]
		static private var imgSQR:Class;
		[Embed(source="muzzle/libButtons/tan1.PNG")]
		static private var imgTan1:Class;
		[Embed(source="muzzle/libButtons/tan.PNG")]
		static private var imgTan:Class;
		[Embed(source="muzzle/libButtons/tanh1.PNG")]
		static private var imgTanh1:Class;
		[Embed(source="muzzle/libButtons/tanh.PNG")]
		static private var imgTanh:Class;
		[Embed(source="muzzle/libButtons/Xin2.PNG")]
		static private var imgXin2:Class;
		[Embed(source="muzzle/libButtons/Xin3.PNG")]
		static private var imgXin3:Class;
		[Embed(source="muzzle/libButtons/XinY.PNG")]
		static private var imgXinY:Class;
		[Embed(source="muzzle/libButtons/XsqrY.PNG")]
		static private var imgXsqrY:Class;
		public var substrate:Sprite;
		

		
		
		public function Button()
		{
		
		}
		public static function CreatButton(num:int):Bitmap
		{
			switch(num)
			{
				case 1:
				{
					return (new imgMC as Bitmap);
					break;
				}
				case 2:
				{
					return(new imgMR as Bitmap);
					break;
				}
				case 3:
				{
					return(new imgMS as Bitmap);
					break;
				}
				case 4:
				{
					return(new imgMPlus as Bitmap);
					break;
				}
				case 5:
				{
					return(new imgMMinus as Bitmap);
					break;
				}
				case 6:
				{
					return(new imgInv as Bitmap);
					break;
				}
				case 7:
				{
					return(new imgLn as Bitmap);
					break;
				}
				case 8:
				{
					return(new imgLeft_parenthesis as Bitmap);
					break;
				}
				case 9:
				{
					return(new imgRight_parenthesis as Bitmap);
					break;
				}
				case 10:
				{
					return(new imgDEL as Bitmap);
					break;
				}
				case 11:
				{
					return(new imgCE as Bitmap);
					break;
				}
				case 12:
				{
					return(new imgC as Bitmap);
					break;
				}
				case 13:
				{
					return(new imgNegat as Bitmap);
					break;
				}
				case 14:
				{
					return(new imgSQR as Bitmap);
					break;
				}
				case 15:
				{
					return(new imgInt as Bitmap);
					break;
				}
				case 16:
				{
					return(new imgSinh as Bitmap);
					break;
				}
				case 17:
				{
					return(new imgSin as Bitmap);
					break;
				}
				case 18:
				{
					return(new imgXin2 as Bitmap);
					break;
				}
				case 19:
				{
					return(new imgFact as Bitmap);
					break;
				}
				case 20:
				{
					return(new img7 as Bitmap);
					break;
				}
				case 21:
				{
					return(new img8 as Bitmap);
					break;
				}
				case 22:
				{
					return(new img9 as Bitmap);
					break;
				}
				case 23:
				{
					return(new imgDivision as Bitmap);
					break;
				}
				case 24:
				{
					return(new imgPercent as Bitmap);
					break;
				}
				case 25:
				{
					return(new imgDms as Bitmap);
					break;
				}
				case 26:
				{
					return(new imgCosh as Bitmap);
					break;
				}case 27:
				{
					return(new imgCos as Bitmap);
					break;
				}
				case 28:
				{
					return(new imgXinY as Bitmap);
					break;
				}
				case 29:
				{
					return(new imgXsqrY as Bitmap);
					break;
				}
				case 30:
				{
					return(new img4 as Bitmap);
					break;
				}
				case 31:
				{
					return(new img5 as Bitmap);
					break;
				}
				case 32:
				{
					return(new img6 as Bitmap);
					break;
				}
				case 33:
				{
					return(new imgMult as Bitmap);
					break;
				}
				case 34:
				{
					return(new img1delx as Bitmap);
					break;
				}
				case 35:
				{
					return(new imgPi as Bitmap);
					break;
				}
				case 36:
				{
					return(new imgTanh as Bitmap);
					break;
				}
				case 37:
				{
					return(new imgTan as Bitmap);
					break;
				}
				case 38:
				{
					return(new imgXin3 as Bitmap);
					break;
				}
				case 39:
				{
					return(new imgExchang as Bitmap);
					break;
				}
				case 40:
				{
					return(new img1 as Bitmap);
					break;
				}
				case 41:
				{
					return(new img2 as Bitmap);
					break;
				}
				case 42:
				{
					return(new img3 as Bitmap);
					break;
				}case 43:
				{
					return(new imgMinus as Bitmap);
					break;
				}
				case 44:
				{
					return(new imgEqual as Bitmap);
					break;
				}
				case 45:
				{
					return(new imgF_E as Bitmap);
					break;
				}
				case 46:
				{
					return(new imgExp as Bitmap);
					break;
				}
				case 47:
				{
					return(new imgMod as Bitmap);
					break;
				}
				case 48:
				{
					return(new imgLog as Bitmap);
					break;
				}
				case 49:
				{
					return(new img10x as Bitmap);
					break;
				}
				case 50:
				{
					return(new img0 as Bitmap);
					break;
				}
				case 51:
				{
					return(new imgPoint as Bitmap);
					break;
				}
				case 52:
				{
					return(new imgPlus as Bitmap);
					break;
				}
				case 53:
				{
					return(new imgInvRun as Bitmap);
					break;
				}
				case 54:
				{
					return(new imgEinX as Bitmap);
					break;
				}
				case 55:
				{
					return(new imgFrac as Bitmap);
					break;
				}
				case 56:
				{
					return(new imgSinh1 as Bitmap);
					break;
				}
				case 57:
				{
					return(new imgSin1 as Bitmap);
					break;
				}
				case 58:
				{
					return(new imgDeg as Bitmap);
					break;
				}
				case 59:
				{
					return(new imgCosh1 as Bitmap);
					break;
				}
				case 60:
				{
					return(new imgCos1 as Bitmap);
					break;
				}
				case 61:
				{
					return(new img2Pi as Bitmap);
					break;
				}
				case 62:
				{
					return(new imgTanh1 as Bitmap);
					break;
				}
				case 63:
				{
					return(new imgTan1 as Bitmap);
					break;
				}
										
				default:
				{
					return(new imgTan1 as Bitmap);
					break;
				}
			}
		}
	}
}