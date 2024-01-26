def solution(num_list):
    answer = 0
    
    #원소들의 곱
    mult = 1
    for i in range(len(num_list)):
        mult *= num_list[i]
        
    #원소들의 합의 제곱
    plus = 0
    for i in range(len(num_list)):
        plus += num_list[i]
    plusplus = plus*plus
    
    if mult>plusplus: answer = 0
    else: answer = 1
    
    return answer