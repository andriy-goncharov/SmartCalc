package calculation
{
	public class Analysis /////////////////// проблемы со скобками
	{
		private var mathExpression:Array;
		private var conversResult:Array
		private var steck:Array;
		public function Analysis():void
		{
			conversResult = new  Array();
			steck = new Array();
		}
		
		public function expressionToRPN(expression:Array):void
		{ 	
			var simbol:String;
			mathExpression = expression;
			var lengthExpress:int = mathExpression.length;
			conversResult = new Array();
			
			steck = new Array();
			for (var i:int = 0; i < lengthExpress; i++) 
			{
				simbol = mathExpression.shift(); //////// начать с начала ?????????
				switch(simbol)
				{
					case '+':
					case '-':
					case '*':
					case '/':
					{
						if ((steck.length == 0 ) || (getPrioritySmb(simbol) > getPrioritySmb(getLastElSteck()))) 
						{
							steck.push(simbol);
						}
						else  
						{
							while((steck.length != 0) || (getPrioritySmb(simbol) > getPrioritySmb(getLastElSteck())))
							{
								conversResult.push(steck.pop());
							} 
							steck.push(simbol);
						}
						break;
					}
					case '(':
					{
						steck.push(simbol);
						break;
					}
					case ')':
					{
						while(getLastElSteck() != '(')
						{
							conversResult.push(steck.pop())
						}
						steck.pop();
						break;
					}
						
					default:
					{
						conversResult.push(simbol);
						break;
					}
				}	
			}	
			while(steck.length != 0)
			{
				conversResult.push(steck.pop());
			} 
			
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
		private function getLastElSteck():String
		{
			return steck[steck.length - 1];
		}
		
		private function getPrioritySmb(simbol:String):int
		{
			switch(simbol)
			{
				case '(':
				{
					return 1;
					break;
				}
				case '+':
				case '-':
				{
					return 2;
					break;
				}
				case '*':		
				case '/':
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

		public function getRezultRPN():String
		{
			trace(conversResult);
			
			return analysRPN(conversResult);
		}
	}
}