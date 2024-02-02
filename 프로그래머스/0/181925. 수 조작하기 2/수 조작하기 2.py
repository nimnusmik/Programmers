def solution(numLog):
    result = ''
    
    for i in range (1, len(numLog)):
        n = numLog[i] - numLog[i - 1]
        
        if n == 1: result += 'w'
        elif n == -1: result += 's'
        elif n == 10: result += 'd'
        elif n == -10: result += 'a'
    print(result)
    
    answer = result
    return answer