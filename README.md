# compiler-project
Here is a detailed, line-by-line explanation of the grammar:


---

1. Start Rule

start with S;

The grammar starts parsing with the non-terminal S, which represents the root of all valid statements in the language.



---

2. Statement Rules

S ::= ST | S ST;

S: Represents a collection of statements.

ST: Represents a single statement.

S ST: Allows for multiple statements by recursively defining S as a series of ST blocks.


ST ::= ASGN | IF_ST | SW_ST | FOR_ST | WH_ST | DO_WH | FUNC | FUNC_CALL | DECL | MAIN_FC;

ST can be one of the following:

ASGN: Assignment statements.

IF_ST: If-else statements.

SW_ST: Switch-case statements.

FOR_ST: For-loop statements.

WH_ST: While-loop statements.

DO_WH: Do-while-loop statements.

FUNC: Function definitions.

FUNC_CALL: Function calls.

DECL: Variable declarations.

MAIN_FC: The main function.




---

3. Assignment and Declaration

ASGN ::= DT ID EQ EXP SM | ID EQ EXP SM;

Assignments:

DT ID EQ EXP SM: A variable is declared with a data type (DT), assigned a value (EXP), and ends with a semicolon (SM).

Example: int x = 5;


ID EQ EXP SM: An existing variable (ID) is assigned a new value (EXP).

Example: x = 5;




DECL ::= DT ID SM;

Declarations:

DT ID SM: A variable is declared without initialization.

Example: int x;





---

4. If-Else Statements

IF_ST ::= IF LP COND RP LCB S RCB M | IF LP COND RP LCB S RCB;

IF keyword starts the statement.

LP and RP: Represent parentheses enclosing the condition (COND).

LCB and RCB: Represent curly braces enclosing the block of statements (S) executed if the condition is true.

M: Represents an optional else block.


M ::= ELSE LCB S RCB | ELSE IF_ST;

ELSE can be followed by:

A block of statements (LCB S RCB).

Another if statement (IF_ST) for else-if chains.




---

5. Switch-Case Statements

SW_ST ::= SWITCH LP EXP RP LCB CASES DEFAULT RCB;

SWITCH: Keyword for switch statements.

LP and RP: Enclose the expression to evaluate (EXP).

LCB and RCB: Enclose the switch body.

CASES: Represents one or more CASE_IT.

DEFAULT: Represents an optional default case.


CASES ::= CASE_IT | CASES CASE_IT;
CASE_IT ::= CASE DIGIT COLON S BREAK SM;
DEFAULT ::= DEF COLON S BREAK SM | ;

CASES: Can be a single case (CASE_IT) or multiple cases.

CASE_IT: A case with a value (DIGIT), a colon (COLON), statements (S), and a BREAK followed by a semicolon.

DEFAULT: An optional default case with DEF, a colon, statements, and a BREAK.



---

6. For-Loops

FOR_ST ::= FOR LP ASGN COND SM EXP RP LCB S RCB;

FOR: The for-loop keyword.

LP and RP: Enclose the for-loop components.

ASGN: Initialization statement.

COND: Loop condition.

EXP: Update expression.


LCB and RCB: Enclose the loop body (S).



---

7. While and Do-While Loops

WH_ST ::= WHILE LP COND RP LCB S RCB;

WHILE: Keyword for while-loops.

LP and RP: Enclose the condition (COND).

LCB and RCB: Enclose the loop body.


DO_WH ::= DO LCB S RCB WHILE LP COND RP SM;

DO: Starts the do-while loop.

LCB and RCB: Enclose the loop body.

WHILE: The condition is checked after the body is executed.

LP and RP: Enclose the condition (COND).

SM: Ends the statement.



---

8. Main Function

MAIN_FC ::= VOID MAIN LP RP LCB S RCB;

Defines the main function:

VOID: Return type.

MAIN: Function name.

LP and RP: Denote no parameters.

LCB and RCB: Enclose the function body (S).




---

9. Functions and Function Calls

FUNC ::= DT ID LP PARA RP LCB S RCB | DT ID LP PARA RP LCB S RETURN ID SM RCB;

Function definition:

DT ID: Return type and function name.

LP PARA RP: Parameters enclosed in parentheses.

LCB S RCB: Enclose the function body.

RETURN ID SM: Optional return statement.



FUNC_CALL ::= ID LP ARGS RP SM;

Function calls:

ID: Function name.

LP ARGS RP: Arguments enclosed in parentheses.

SM: End of the statement.




---

10. Conditions and Comparisons

COND ::= COND GE K | COND LE K | COND GR K | COND LS K | K;

COND: Logical expressions using relational operators (GE, LE, etc.).

K: A base comparison or logical unit.


K ::= K NE G | K EE G | G;
G ::= G OO H | H;
H ::= H AO J | J;
J ::= EXP | NE J;

Nested logical expressions using equality, AND (AO), and OR (OO).



---

11. Arithmetic Expressions

EXP ::= E | EXP INCR | EXP DECR;

EXP: Arithmetic expressions or postfix operations (INCR, DECR).


E ::= E PLUS T | E MINUS T | T;
T ::= T MUL N | T DIV N | T MOD N | N;
N ::= INCR N | DECR N | F;
F ::= LP EXP RP | ID | DIGIT;

E, T, N, F: Define arithmetic operations (PLUS, MUL, etc.) and their precedence:

E: Addition/subtraction.

T: Multiplication/division/modulus.

N: Increment/decrement.

F: Parentheses, identifiers, or constants.




---

This grammar defines the syntactic rules for a language supporting basic programming constructs.
