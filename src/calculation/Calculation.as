package calculation
{
	import flash.events.MouseEvent;
	
	import muzzle.Display;

	public class Calculation
	{
			
		private var pushButtOper:int;
		private var result:Number;
		private var analys:RPNnew;
		private var arrayForCalc:Array;
		private const DIGIT_MODE:int = 0;
		private const MATH_OPER_MODE:int = 1;
		private const BKT_MODE:int = 2;
		private var inputModeAngles:int;  ////////////////// радианы или градусы 
		private var lastOper:String;
		private var lastNumber:String;
		
		public function Calculation()
		{
			pushButtOper = DIGIT_MODE;
			analys = new RPNnew();
			arrayForCalc = new Array();
			inputModeAngles = MathFunction.GRADUS;
		}
		
	
		private function modeInput(simb:String):int
		{
			switch(simb)
			{
				case ')':
				{
					return BKT_MODE;
					break;
				}
					
				case '+':
				case '-':
				case '*':
				case '/':
				{
					return MATH_OPER_MODE;
					break;
				}
					
				default:
				{
					return DIGIT_MODE;
					break;
				}
			}
		}
		
		
		public function funcAddingDigit(numeric:String):void
		{
			if (pushButtOper == MATH_OPER_MODE) 
			{
				SmartCalc.display.digit = numeric;
			}
			else if (pushButtOper == BKT_MODE) 
			{
				delToBkt();
				SmartCalc.display.setTxtUppDisp(arrForCalcInuppDisp());
			}
			else
			{
				SmartCalc.display.addDigit(numeric);
			}
			pushButtOper = DIGIT_MODE;
		}
		
	
		
		
		public function funcPoint():void
		{
		////////////////// переделать //////////////
			if (!pushButtOper) 
			{
				if (SmartCalc.display.digit == "0") 
				{
					SmartCalc.display.addDigit("0.");
				}
				else if (SmartCalc.display.digit.indexOf(".") == -1)
				{
					SmartCalc.display.addDigit(".");	
				}	
			}
			
			
		}
		
		public function funcNegat():void
		{
			if (SmartCalc.display.digit != "0") 
			{
				if (Number(SmartCalc.display.digit) > 0) 
				{
					SmartCalc.display.digit = "-"+SmartCalc.display.digit;	
				}
				else 
				{
					SmartCalc.display.digit = SmartCalc.display.digit.replace("-","");
				}
			}
		}
		
		public function funcDel():void
		{
			SmartCalc.display.delSimb();
		}
		
		public function funcCE():void
		{
			SmartCalc.display.digit = "0";
		}
		
		//////////////////// арифметич операции /////////////
		public function funcArithmetic(operation:String):void
		{
			if (pushButtOper == DIGIT_MODE) 
			{
				SmartCalc.display.addTxtUppDisp(SmartCalc.display.digit +' '+operation)
				arrayForCalc.push(SmartCalc.display.digit,operation);
				lastNumber = SmartCalc.display.digit;
				lastOper = operation;
			}
			else if (pushButtOper == BKT_MODE)
			{
				SmartCalc.display.addTxtUppDisp(' '+operation)
				arrayForCalc.push(operation);
				lastOper = operation;
				
			}
			
			pushButtOper = MATH_OPER_MODE;
		}
		
	/////////////////// арифметические операции  //////////////////
	///////////////////////// мат функции /////////////////////////	
		public function funcMathFunc(name:String):void
		{
			var mathEl:Array;
			var nameModeAngles:String;
			switch(inputModeAngles)
			{
				case MathFunction.GRAD:
				{
					nameModeAngles = 'g'
					break;
				}
				case MathFunction.RADIAN:
				{
					nameModeAngles = 'r'
					break;
				}
				default:
				{
					nameModeAngles = 'd'
					break;
				}
			}
			//////////для разбора ///////////////////////////
			// передаем имя ф-и      само число      , режим углов
			mathEl = [name,SmartCalc.display.digit,nameModeAngles] ///// элемент массива строки разбора сам массив
			
			/***
			***придумать добавление сиволов Радианб Градус Град и разбор этого всего
			****/
			if (pushButtOper == BKT_MODE) 
			{
				SmartCalc.display.addTxtUppDisp(' '+name+'('+SmartCalc.display.digit+nameModeAngles+')');
				arrayForCalc.push(mathEl);
				SmartCalc.display.digit = MathFunction.createFunction(name,SmartCalc.display.digit,inputModeAngles);
			}
			else 
			{
				
				SmartCalc.display.addTxtUppDisp(' '+name+'('+SmartCalc.display.digit+nameModeAngles+')');
				arrayForCalc.push(mathEl);
				SmartCalc.display.digit = MathFunction.createFunction(name,SmartCalc.display.digit,inputModeAngles);	
			}
			
			
			pushButtOper = BKT_MODE;
		}
		
	///////////////////////// мат функции /////////////////////////
		
		
		
		
	/////////////////// скобки /////////////////////////
		public function funcLeft_Bkt():void
		{
			if (pushButtOper != BKT_MODE) 
			{
				SmartCalc.display.addTxtUppDisp(' (');
				arrayForCalc.push('(');
				SmartCalc.display.digit = '0';
				pushButtOper = MATH_OPER_MODE;
			}
			
		}
		
		public function funcRight_Bkt():void
		{
			if (abilityAddBkt() == true) 
			{
				if (pushButtOper == BKT_MODE) 
				{
					SmartCalc.display.addTxtUppDisp(')');
					arrayForCalc.push(')');
				}
				else 
				{
					SmartCalc.display.addTxtUppDisp(SmartCalc.display.digit+' )');
					arrayForCalc.push(SmartCalc.display.digit);
					arrayForCalc.push(')');
				}
				analys.setStrToParse(getToBkt())
				SmartCalc.display.digit = analys.getRezultRPN();
				pushButtOper = BKT_MODE;	
			}		
		}
		//////////////////////получение содержимого скобок /////////////////////////
		private function getToBkt():Array
		{ 
			var strToBkt:Array = new Array();
			var i:int = arrayForCalc.length - 1;
			var j:int = 0;
			var colOpenBkt:int = getColOpenBkt();	
			
	
			while((colOpenBkt > 0) && (i >= 0))
			{
				strToBkt[j] = arrayForCalc[i];
				i--;
				j++;
				if (arrayForCalc[i] == '(') 
				{
					colOpenBkt--;
				}
			} 
			strToBkt.shift();
			return strToBkt.reverse();
			
		}
		
		private function delToBkt():void
		{
			var colOpenBkt:int = getColOpenBkt();
			while((colOpenBkt > 0) && (arrayForCalc.length > 0))
			{
				if (arrayForCalc.pop() == '(') 
				{
					colOpenBkt--;
				}
			} 
		}
		
		private function abilityAddBkt():Boolean
		{
			var i:int;
			var colopenBkt:int;
			for (i = 0; i < arrayForCalc.length; i++) 
			{
				if (arrayForCalc[i] == '(') 
				{
					colopenBkt++
				}
				else if (arrayForCalc[i] == ')')
				{
					colopenBkt--;
				}
			}
			trace (colopenBkt);
			if (colopenBkt == 0) 
			{
				return false; 
			}
			else  
			{
				return true;
			}
		}
		////////// получение количества открытых скобок ///////////////////
		private function getColOpenBkt():int
		{
			var countSmb:int = arrayForCalc.length - 1;
			var numOpenBkt:int = 0;
			var fitBkt:int = 0;
			do 
			{
				if (arrayForCalc[countSmb] == ')') 
				{
					numOpenBkt++;
					fitBkt++;
				}
				else if (arrayForCalc[countSmb] == '(')
				{
					fitBkt--;
				}
				countSmb--;
				
			} while((fitBkt != 0) && (countSmb >= 0));
			return numOpenBkt;
		}
		
		private function arrForCalcInuppDisp():String
		{
			var i:int;
			var newStrForUppDisp:String = '';
			for (i = 0; i < arrayForCalc.length; i++) 
			{
				newStrForUppDisp += arrayForCalc[i] +' '; 
			}
			return newStrForUppDisp;
			
		}
	/////////////////// скобки /////////////////////////
		private function Calc():void ////// убрать добавление последнего числа
		{
//			analys.expressionToRPN(arrayForCalc);
			analys.setStrToParse(arrayForCalc);
			SmartCalc.display.digit = analys.getRezultRPN();
		}
		
		public function funcEqual():void
		{
			trace(pushButtOper);
			if (pushButtOper == BKT_MODE) 
			{
				Calc();
				SmartCalc.display.clearUppDisp();
			}
			else if (pushButtOper == MATH_OPER_MODE)
			{
//				trace(lastNumber,lastOper);
				arrayForCalc.push(SmartCalc.display.digit,lastOper,lastNumber); 
				Calc();
				SmartCalc.display.clearUppDisp();
			}
			else 
			{
				arrayForCalc.push(SmartCalc.display.digit); 
				Calc();
				SmartCalc.display.clearUppDisp();	
			}
			pushButtOper = MATH_OPER_MODE;
		}
		
	}
}