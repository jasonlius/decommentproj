#include<stdio.h>
#define EXIT_SUCCESS 1
#define EXIT_FAILURE 0

/*********************************************************************
 * The following are serval states of DFS                            *
 * NORMAL denotes  normal state which is the initial status          *
 * SLASH denotes [/] state                                           *
 * SLASH_STAR denotes [/*] state                                     *
 * SLASH_STAR_STAR denotes [/**] state                               *
 * NOR_BACKSLASH denotes[/] state which only tranfer to NORNAL       *
 * DOUBLE_QUOTE denotes ["] state                                    * 
 * SINGLE_QUOTE denotes ['] state                                    *
 * DQ_BACKSLASH denotes[/] state which only tranfer to DOUBLE_QUOTE  *
 * SQ_BACKSLASH denotes[/] state which only tranfer to SOUBLE_QUOTE  *
**********************************************************************/
enum stateType {
    NORMAL , SLASH , SLASH_STAR , SLASH_STAR_STAR ,NOR_BACKSLASH, 
    DOUBLE_QUOTE , SINGLE_QUOTE , DQ_BACKSLASH , SQ_BACKSLASH   
};

/**********************************************************************
 * this is a DFA NORNAL STATE HANDER function.                        *
 * paramater "c" is a current DFA character.                          *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType normalStateHandler(int c )
{
    enum stateType state;
    switch (c)
    {
    case '/' :
        state = SLASH;
        break;
    case '\"' :
        state = DOUBLE_QUOTE;
        putchar(c);
        break;
    case '\'' :
        state = SINGLE_QUOTE;
        putchar(c);
        break;
    case '\\' :
        state = NOR_BACKSLASH;
        putchar(c);
        break;
    default:
        putchar(c);
        state = NORMAL;
        break;
    }    
    return state; 
}

/**********************************************************************
 * this is a DFA  NOR_BACKSLASH state handle function.                *
 * paramater "c" is a current DFA character.                          *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType norbackslashHandler(int c)
{
    enum stateType state;
    putchar(c);
    state = NORMAL;   
    return state;
}

/**********************************************************************
 * this is a DFA  SLASH state handle function.                        *
 * paramater "c" is a current DFA character.                          *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType slashStateHandler(int c )
{
    enum stateType state;
    switch (c)
    {
    case '*' :
        state = SLASH_STAR;
        putchar(' ');
        break;
    case '/' :
        state = SLASH;
        putchar('/');
        break;
    case '\'' :
        state = SINGLE_QUOTE;
        putchar('/');
        putchar(c);
        break;
    case '\"' :
        state = DOUBLE_QUOTE;
        putchar('/'); 
        putchar(c);
        break;
    default:      
        putchar('/');
        putchar(c);
        state = NORMAL;
        break;
    }
    return state;
}

/**********************************************************************
 * this is a DFA SLASH_STAR state handle function.                    *
 * paramater "c" is a current DFA character.                          *
 * paramater "*lineNumber" is a int typed pointer                     *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType slashStartStateHandler(int c , int *lineNumber)
{
    enum stateType state;
    if ( c == '*')
        state = SLASH_STAR_STAR;
    else{
        if (c == '\n'){
            putchar('\n');
            //lineNumber variable is to calculate the "\n" inside comments 
            (*lineNumber)++;
        }
        state = SLASH_STAR;
    }
    return state;
}

/**********************************************************************
 * this is a DFA SLASH_STAR_STAR state handle function.               *
 * paramater "c" is a current DFA character.                          *
 * paramater "*lineNumber" is a int typed pointer                     *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType slashStartStartStateHandler(int c , int *lineNumber)
{
    enum stateType state;
    //indicate that this is a complete comment. 
    if ( c == '/'){
        //We only need this value if the comment is not terminated,
        // when this is a complete comment we set it to the initial value of 0
        (*lineNumber) = 0;
        state = NORMAL;
    }
    else{
        if (c == '\n')
        putchar('\n');
        //lineNumber variable is to calculate the "\n" inside comments 
        (*lineNumber)++;
        state = SLASH_STAR;
    }
    return state;
}

/**********************************************************************
 * this is a DFA DOUBLE_QUOTE state handle function.                  *
 * paramater "c" is a current DFA character.                          *
 * different "c" correspond to different processing actions           *
 * and transfer to different status.                                  *
 * Return the next state.                                             *
 **********************************************************************/
enum stateType doubleQuoteStateHandler(int c )
{
    enum stateType state; 
    switch (c)
    {
    case '\\':
        putchar(c);
        state = DQ_BACKSLASH;
        break;
    case '\"' :
        putchar(c);
        state = NORMAL;
        break;
    default:
        putchar(c);
        state = DOUBLE_QUOTE;
        break;
    } 
    return state;
}

enum stateType DqBackslashStateHandler(int c)
{
    enum stateType state; 
    putchar(c);
    state = DOUBLE_QUOTE;
    return state;
}

enum stateType singleQuoteStateHandler(int c )
{
    enum stateType state; 
    switch (c)
    {
    case '\\':
        putchar(c);
        state = SQ_BACKSLASH;
        break;
    case '\'' :
        putchar(c);
        state = NORMAL;
        break;
    default:
        putchar(c);
        state = SINGLE_QUOTE;
        break;
    } 
    return state;
}

enum stateType sqBackslashStateHandler(int c)
{
    enum stateType state; 
    putchar(c);
    state = SINGLE_QUOTE;
    return state;
}

/**********************************************************************
 * this is unterminated comment  detection function.                  *
 * paramater "state" is a current DFA state.                          *
 * paramater "lineNumber" is point typed pointer.                     *
 * paramater "amountLine" is integer.                                 *            
 * calling fprintf function to print some message to stderr input.    *
 * Return state value correspond to result                            *                                                            
 **********************************************************************/
int detectUnterminatedComment(enum stateType state, int lineNumber , int amountLine) 
{
    if(state == SLASH_STAR || state == SLASH_STAR_STAR ){
        //implement to calculate current unterminated comment line number.
        fprintf(stderr , "Error: line %d: unterminated comment\n" , amountLine - lineNumber);
        return EXIT_FAILURE;
    }
    else 
        return EXIT_SUCCESS;
}

/**********************************************************************
 * read text from from input stream(stdin).                           * 
 * implement a function to delete all comment inside input stream.    *
 * A DFS was designed for the logical function of removing comment.   *
 * Return  EXIT_SUCCESSFUAL =1 or EXIT_FAILURE = 0                    *                                                            
 **********************************************************************/
int main()
{
    enum stateType state;   
    state = NORMAL;
    int c;
    int lineNumber = 0;
    int amountLine = 1;
    while((c = getchar()) != EOF)
    {
        if (c == '\n')
            amountLine ++ ;
        switch (state)
        {
        case NORMAL:
            state = normalStateHandler(c);
            break;
        case SLASH:
            state = slashStateHandler(c);
            break;
        case SLASH_STAR:
            state = slashStartStateHandler(c , &lineNumber);
            break;
        case SLASH_STAR_STAR:
            state = slashStartStartStateHandler(c, &lineNumber);
            break;
        case DOUBLE_QUOTE:
            state = doubleQuoteStateHandler(c);
            break;
        case DQ_BACKSLASH:
            state = DqBackslashStateHandler(c);
            break;
        case SINGLE_QUOTE:
            state = singleQuoteStateHandler(c);
            break;
        case SQ_BACKSLASH:
            state = sqBackslashStateHandler(c);
            break;
        case NOR_BACKSLASH:
            state = norbackslashHandler(c);
            break;
        }
    }
    return detectUnterminatedComment(state,lineNumber , amountLine);
}