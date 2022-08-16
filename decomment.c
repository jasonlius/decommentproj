#include<stdio.h>
#define EXIT_SUCCESS 1
#define EXIT_FAILURE 0

enum stateType 
{
    NORMAL , SLASH , SLASH_STAR , SLASH_STAR_STAR , 
    DOUBLE_QUOTE , SINGLE_QUOTE , DQ_BACKSLASH , SQ_BACKSLASH   
};
enum stateType state;

enum stateType normalStateHandler(int c , int lineNumber)
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
    default:
        if (c == '\n')
            lineNumber++ ;        
        putchar(c);
        state = NORMAL;
        break;
    }    
    return state; 
}

enum stateType slashStateHandler(int c , int lineNumber)
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
        if (c == '\n')
            lineNumber++ ;        
        putchar('/');
        putchar(c);
        state = NORMAL;
        break;
    }
    return state;
}

enum stateType slashStartStateHandler(int c)
{
    enum stateType state;
    if ( c == '*')
        state = SLASH_STAR_STAR;
    else{
        if (c == '\n')
        putchar('\n');
        state = SLASH_STAR;
    }
    return state;
}

enum stateType slashStartStartStateHandler(int c)
{
    enum stateType state;
    if ( c == '/')
        state = NORMAL;
    else{
        if (c == '\n')
        putchar('\n');
        state = SLASH_STAR;
    }
    return state;
}

enum stateType doubleQuoteStateHandler(int c , int lineNumber)
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
        if (c == '\n')
        lineNumber++;
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

enum stateType singleQuoteStateHandler(int c , int lineNumber)
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
        if (c == '\n')
        lineNumber++;
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
    state = SQ_BACKSLASH;
    return state;
}

int main()
{   
    state = NORMAL;
    int c;
    int lineNumber = 1;
    while((c = getchar()) != EOF)
    {
        switch (state)
        {
        case NORMAL:
            state = normalStateHandler(c, lineNumber);
            break;
        case SLASH:
            state = slashStateHandler(c, lineNumber);
            break;
        case SLASH_STAR:
            state = slashStartStateHandler(c);
            break;
        case SLASH_STAR_STAR:
            state = slashStartStartStateHandler(c);
            break;
        case DOUBLE_QUOTE:
            state = doubleQuoteStateHandler(c , lineNumber);
            break;
        case DQ_BACKSLASH:
            state = DqBackslashStateHandler(c);
            break;
        case SINGLE_QUOTE:
            state = singleQuoteStateHandler(c , lineNumber);
            break;
        case SQ_BACKSLASH:
            state = sqBackslashStateHandler(c);
            break;
        }
    }
    if(state == SLASH_STAR || state == SLASH_STAR_STAR ){
        fprintf(stderr , "Error: line %d: unterminated comment\n" , lineNumber);
        return EXIT_FAILURE;
    }
    else 
        return EXIT_SUCCESS;
}