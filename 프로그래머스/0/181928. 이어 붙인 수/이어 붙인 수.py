def solution(num_list):
    answer = 0
    jak = []
    hol = []
    
    for i in num_list: 
        if i % 2 == 0: jak.append(i)
        else: hol.append(i)
    
    jak2 = ''.join(map(str, jak))
    hol2 = ''.join(map(str, hol))
    
    answer = int(jak2)+int(hol2)
    
    return answer