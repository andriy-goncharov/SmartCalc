package calculation
{

	public class MathFunction
	{ 
		public static const RADIAN:int = 0;
		public static const GRADUS:int = 1;
		public static const GRAD:int = 2;
		
		public static function createFunction(namefunc:String,parametr:String ='',UnitAngle:int = GRADUS):String
		{
			var angle:Number;
			if (UnitAngle == GRADUS) 
			{
				angle = Number(parametr)*Math.PI/180;
			}
			else if (UnitAngle == GRAD)
			{
				angle = Number(parametr)*Math.PI/200;
			}
			else 
			{
				angle = Number(parametr);
			}
			switch(namefunc) /////////////////// допилить может перепридумать
			{
				case 'sin':
				{
					return String(Math.sin(angle));
					break;
				}
				case 'cos':
				{
					return String(Math.cos(angle));
					break;
				}
				case 'tan':
				{
					return String(Math.tan(angle));
					break;
				}
				case 'abs':
				{
					return String(Math.abs(Number(parametr)));
					break;
				}
				case 'log':
				{
					return String(Math.log(Number(parametr)));
					break;
				}
				default:
				{
					return(parametr);
				}
					
			}
		}
	}
}