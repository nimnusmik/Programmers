def solution(a, b, c):
    if not(a == b == c):
        
        if a == b or a == c or b==c : answer = (a+b+c) * (a*a+b*b+c*c) 
        else: answer = a + b +c
        
    elif a == b == c: 
        answer = (a+b+c) * (a*a+b*b+c*c) * (a*a*a+b*b*b+c*c*c)
    
        
    return answer


