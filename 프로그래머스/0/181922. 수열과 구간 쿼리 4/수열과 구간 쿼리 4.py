# queries: [s, e, k] 꼴
#각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 i가 k의 배수이면 arr[i]에 1을 더합니다.

def solution(arr, queries):
    answer = []
    
    for qurey in queries:
        s,e,k = qurey
        
        for i in range(s,e+1):
            #print(i)
            if i % k == 0: 
                arr[i] += 1
    
    return arr