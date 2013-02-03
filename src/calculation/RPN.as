package calculation
{
	public class RPN
	{
		private var steck:Array;
		private var rezultPN:Array;
		private var simbol:String;
		public function RPN()
		{	
			steck = new Array();
			rezultPN = new Array();		
		}
		
		private function conversToRPN(numberStr:Array):void
		{
			var i:int;
			var element:String = '';
			var lengthStr:int = numberStr.length;
			rezultPN = [];
			steck = []; 
			for (i = 0; i < lengthStr; i++) 
			{
				
				element = numberStr.shift();
				
				if (priorityOperation(element) == 4) 
				{
					rezultPN.push(element);	
				}
				else  
				{	
					if ((element == '(') || steck.length == 0) 
					{
						steck.push(element);
						
					}else{
						 if (priorityOperation(getTopElementSteck()) < priorityOperation(element)) 
						 {
							steck.push(element);
						 }
						 else
						 {	
							 while((steck.length != 0) && (priorityOperation(getTopElementSteck()) >= priorityOperation(element)))
							 {
								 rezultPN.push(steck.pop());
							 } 
							 if (element != ')') 
							 {
								 steck.push(element);	
							 }				
							 if (element == ')') 
							 {
								 while(getTopElementSteck() != '(')
								 {
									 rezultPN.push(steck.pop());
								 } 
								 steck.pop();
							 }
						 }
					}
				}		
			}
			
			while(steck.length != 0)
			{
				rezultPN.push(steck.pop());
			}
		}
		
		private function priorityOperation(oper:String):int
		{
//			попробовать у скобок сделать одинаковый приоритет
///////////////////////////////////////////////////////////////////			
			switch(oper)
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
				case '+':
				{
					return 2;
					break;
				}
				case '-':
				{
					return 2;
					break;
				}
				case '*':
				{
					return 3;
					break;
				}
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
		
		private function getTopElementSteck():String
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
				if (priorityOperation(str[i]) == 4) 
				{
					steck.push(str[i]);
				}
				else
				{
					steck.push(arithmetic(steck.pop(),str[i],steck.pop()));
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
	
		
		
		
		public function setStringToParse(str:Array):void
		{
			conversToRPN(str);
			
		}
		public function getRezultRPN():String
		{
			trace(rezultPN);

			return analysRPN(rezultPN);
		}
	}
}