#include<stdio.h>
enum stateType {STAR =0 , N =1 , NA =2 , NAN =3 , NANO =4};

//***********************************
//处理DFS的Start状态
//传入一个字符的字面值作为参数（c）
//根据传入的字符执行if语句。从而转换到特定状态。
//***********************************
enum stateType handleStarState(int c)
{
    enum stateType state;
    if (c == 'n')
        state = N;
        else
        state = STAR;
    return state;
}

//***********************************
//处理DFS的N状态                      
//传入一个字符的字面值作为参数（c）         
//根据传入的字符判断if语句条件。         
//从而转换到特定状态。                  
//***********************************
enum stateType handle_N_State(int c)
{
    enum stateType state;
    if (c == 'a')
        state = NA;
    else if(c == 'n')
        state = N;
    else
        state = STAR;
    return state;
}
//***********************************
//处理DFS的NA状态                      
//传入一个字符的字面值作为参数（c）         
//根据传入的字符判断if语句条件。         
//从而转换到特定状态。                  
//***********************************
enum stateType handle_NA_State(int c)
{
    enum stateType state;
    if (c == 'n')
        state = NAN;
        else
        state = STAR;
    return state;
}

//***********************************
//处理DFS的NAN状态                      
//传入一个字符的字面值作为参数（c）         
//根据传入的字符判断if语句条件。         
//从而转换到特定状态。                  
//***********************************
enum stateType handle_NAN_State(int c)
{
    enum stateType state;
     if (c == 'o')
        state = NANO;
    else if(c == 'a')
        state = NA;
    else if(c == 'n')
        state = N;
    else
        state = STAR;
    return state;
}

//***********************************
//程序运行的主函数，检测字符串是否含有nano
//存在nano则打印yes，不存在则打印no
//代码逻辑使用DFS机制实现，一共为5个状态
//不同状态相互会转移，从而触发不同的动作
//字符串输入完毕之后，判断最终的状态
//打印不同的结果在屏幕上
//程序正常结束则返回0
//***********************************
int main()
{
    int c;
    enum stateType state;

    while ((c = getchar()) != EOF)
    {
      switch (state)
      {
      case STAR:
        state = handleStarState(c);
        break;
      case N:
        state = handle_N_State(c);
        break;
      case NA:
        state = handle_NA_State(c);
        break;
      case NAN:
        state = handle_NAN_State(c);
        break;
      case NANO:
        state = NANO;
        break;  
      }
    } 
    if (state == NANO)
        printf("Yes\n");
    else
        printf("No\n");
    return 0;
}