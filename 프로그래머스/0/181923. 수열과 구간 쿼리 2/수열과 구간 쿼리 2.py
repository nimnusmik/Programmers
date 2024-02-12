def solution(arr, queries):
    result = []
    
    for query in queries:
        s, e, k = query
        sub_array = arr[s:e+1]  # e까지 포함되도록 수정
        valid_numbers = [num for num in sub_array if num > k]
        
        if valid_numbers:
            result.append(min(valid_numbers))
        else:
            result.append(-1)
    return result
