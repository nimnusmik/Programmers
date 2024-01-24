def solution(a, d, included):
    answer = 0
    
    # "true" 값을 가지는 값들의 인덱스를 가져오기
    true_indices = [index for index, value in enumerate(included) if value == True]
    
    result_list = [num * d + a for num in true_indices] 
    print(result_list)
    answer = sum(result_list)
        

    return answer
