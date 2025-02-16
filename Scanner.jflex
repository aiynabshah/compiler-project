import java_cup.runtime.*;
%%
%cup
%class Examplee
PLUS="+"
MINUS="-"
MUL="*"
DIV="/"
LP="("
RP=")"
LCB = "{"
RCB = "}"
MOD = "%"
AO = "&&"
OO = "||"
DT = (int|float|double|char|boolean)
EE = "=="
LE = "<="
GE = ">="
GR = ">"
LS = "<"
NE = "!="
IF = "if"
ELSE = "else"
EQ = "="
SM = ";"
ID=[_a-zA-Z][_a-zA-Z0-9]*
DIGIT = 0?[0-9]*
SWITCH = "switch"
FOR = "for"
INCR = "++"
DECR = "--"
DO = "do"
WHILE = "while"
CASE = "case"
COLON = ":"
BREAK = "break"
DEF = "default"
VOID = "void"
MAIN = "main"
RETURN = "return"
COMMA = ","
%%
\n|\s|\r|\b {}
{RETURN} {System.out.println("<" + yytext() +", RETURN>");return new Symbol(sym.RETURN);}
{DT}  {System.out.println("<" + yytext() +", DT>");return new Symbol(sym.DT);}
{FOR}  {System.out.println("<" + yytext() +", FOR>");return new Symbol(sym.FOR);}
{SWITCH}  {System.out.println("<" + yytext() +", SWITCH>");return new Symbol(sym.SWITCH);}
{DO}  {System.out.println("<" + yytext() +", DO>");return new Symbol(sym.DO);}
{WHILE}  {System.out.println("<" + yytext() +", WHILE>");return new Symbol(sym.WHILE);}
{CASE}  {System.out.println("<" + yytext() +", CASE>");return new Symbol(sym.CASE);}
{BREAK}  {System.out.println("<" + yytext() +", BREAK>");return new Symbol(sym.BREAK);}
{DEF}  {System.out.println("<" + yytext() +", DEF>");return new Symbol(sym.DEF);}
{ELSE} {System.out.println("<" + yytext() +", ELSE>");return new Symbol(sym.ELSE);}
{IF} {System.out.println("<" + yytext() +", IF>");return new Symbol(sym.IF);}
{VOID} {System.out.println("<" + yytext() +", VOID>");return new Symbol(sym.VOID);}
{MAIN} {System.out.println("<" + yytext() +", MAIN>");return new Symbol(sym.MAIN);}
{MINUS} {System.out.println("<" + yytext() +", MINUS>");return new Symbol(sym.MINUS);}
{PLUS} {System.out.println("<" + yytext() +", PLUS>");return new Symbol(sym.PLUS);}
{INCR} {System.out.println("<" + yytext() +", INCR>");return new Symbol(sym.INCR);}
{DECR} {System.out.println("<" + yytext() +", DECR>");return new Symbol(sym.DECR);}
{MUL} {System.out.println("<" + yytext() +",MUL >");return new Symbol(sym.MUL);}
{DIV} {System.out.println("<" + yytext() +", DIV >");return new Symbol(sym.DIV);}
{ID} {System.out.println("<" + yytext() +", ID>");return new Symbol(sym.ID);}
{LP} {System.out.println("<" + yytext() +", LP>");return new Symbol(sym.LP);}
{RP} {System.out.println("<" + yytext() +", RP>");return new Symbol(sym.RP);}
{AO} {System.out.println("<" + yytext() +", AO>");return new Symbol(sym.AO);}
{OO} {System.out.println("<" + yytext() +", OO>");return new Symbol(sym.OO);}
{EE} {System.out.println("<" + yytext() +", EE>");return new Symbol(sym.EE);}
{LE} {System.out.println("<" + yytext() +", LE>");return new Symbol(sym.LE);}
{GE} {System.out.println("<" + yytext() +", GE>");return new Symbol(sym.GE);}
{GR} {System.out.println("<" + yytext() +", GR>");return new Symbol(sym.GR);}
{LS} {System.out.println("<" + yytext() +", LS>");return new Symbol(sym.LS);}
{NE} {System.out.println("<" + yytext() +", NE>");return new Symbol(sym.NE);}
{SM} {System.out.println("<" + yytext() +", SM>");return new Symbol(sym.SM);}
{LCB} {System.out.println("<" + yytext() +", LCB>");return new Symbol(sym.LCB);}
{RCB} {System.out.println("<" + yytext() +", RCB>");return new Symbol(sym.RCB);}
{DT} {System.out.println("<" + yytext() +", DT>");return new Symbol(sym.DT);}
{EQ} {System.out.println("<" + yytext() +", EQ>");return new Symbol(sym.EQ);}
{MOD} {System.out.println("<" + yytext() +", MOD>");return new Symbol(sym.MOD);}
{COLON} {System.out.println("<" + yytext() +", COLON>");return new Symbol(sym.COLON);}
{COMMA} {System.out.println("<" + yytext() +", COMMA>");return new Symbol(sym.COMMA);}
{DIGIT} {System.out.println("<" + yytext() +", DIGIT>");return new Symbol(sym.DIGIT);}