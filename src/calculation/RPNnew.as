package calculation
{
	

	public class RPNnew
	{
		private var steck:Array;
		private var resultRpn:Array
		private var simbol:String;
		private var strToParse:Array;
		public function RPNnew()
		{
			steck = new Array();
			resultRpn = new Array();
		}
		
		public function setStrToParse(str:Array):void
		{
			strToParse = new Array();
			strToParse = str;
			resultRpn = [];
			conversToRPN();
			trace(resultRpn);
		}
		
		private function conversToRPN():void
		{
			var i:int;
			var lengthStr:int = strToParse.length; 
			for (i = 0; i < lengthStr; i++) 
			{			
				simbol = strToParse.shift();
//				if (simbol as Array) 
//				{
//					getRezMathFunc(simbol);
//				}
				switch(simbol)
				{
					case '(':
					{
						steck.push(simbol);
						break;
					}
					case ')':
					{
						while(getTopElSteck() != '(')
						{
							resultRpn.push(steck.pop());
						} 
						steck.pop();
						break;
					}	
					case '+':case '-':case '*':case '/':
					{
						if (steck.length == 0) 
						{
							steck.push(simbol);
						}
						else
						{
							while((steck.length != 0) && (priorityOperation(getTopElSteck()) >= priorityOperation(simbol)))
							{
								resultRpn.push(steck.pop());
							} 
							steck.push(simbol);
						}
						break;
					}
					default:
					{
						resultRpn.push(simbol);
						break;
					}	
				}
			}
			while(steck.length != 0)
			{
				resultRpn.push(steck.pop());
			} 
			
		}
		
		
		
		private function priorityOperation(operation:String):int
		{
			switch(operation)
			{
				case '(':
				{
					return 0;   
					break;
				}
				case ')':
				{
					return 1;   
					break;
				}
				case '+': case '-':
				{
					return 2;
					break;
				}
				case '*': case '/':
				{
					return 3;
					break;
				}
									
				default:
				{
					return 4;
					break;
				}
			}
		}
		
		private function getTopElSteck():String
		{
			return steck[steck.length - 1];
		}
		
		
		private function analysRPN(str:Array):String
		{
			var steck:Array = new Array();
			var i:int;
			var ansver:String;
			for (i = 0; i < str.length; i++) 
			{
				if (isNaN(Number(str[i]))) 
				{
					steck.push(arithmetic(steck.pop(),str[i],steck.pop()));
				}
				else
				{
					steck.push(str[i]);
				}
			}
			ansver = steck.pop();
			return ansver;
		}
		
		private function arithmetic(a:String,oper:String,b:String):Number
		{
			switch(oper)
			{
				case '-':
				{
					return Number(b) - Number(a);
					break;
				}
				case '*':
				{
					return Number(b) * Number(a);
					break;
				}
				case '/':
				{
					return Number(b) / Number(a);
					break;
				}
					
				default:
				{
					return Number(b) + Number(a);
					break;
				}
			}
		}
		
		public function getRezultRPN():String
		{
			trace(resultRpn);
			
			return analysRPN(resultRpn);
		}
		
		private function getRezMathFunc(arrData:Array):String
		{
			return MathFunction.createFunction(arrData[0],arrData[1],arrData[2]);
		}
		
	}
}