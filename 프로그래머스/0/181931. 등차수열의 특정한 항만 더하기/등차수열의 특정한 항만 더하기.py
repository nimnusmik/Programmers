def solution(a, d, included):
    answer = 0
    
    # "true" 값을 가지는 값들의 인덱스를 가져오기
    true_indices = [index for index, value in enumerate(included) if value == True]
    print(true_indices)
    
    if d != 1:
        result_list = [num * d + a for num in true_indices] 
        print(result_list)
        answer = sum(result_list)
        
    if d == 1:
        result_lis1t = [num + (a) for num in true_indices] 
        print(result_lis1t)
        answer = sum(result_lis1t)
   
    return answer
