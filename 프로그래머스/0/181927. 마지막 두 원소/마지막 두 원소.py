#정수 리스트 num_list가 주어질 때, 
#마지막 원소가 그전 원소보다 크면 마지막 원소에서 그전 원소를 뺀 값을 
#마지막 원소가 그전 원소보다 크지 않다면 마지막 원소를 두 배한 값을 추가하여 return하도록 solution 함수를 완성해주세요.
def solution(num_list):
    #마지막 원소가 그전 원소보다 크면
    if num_list[-1] > num_list[-2]:
        num_list.append(num_list[-1]-num_list[-2])
        print(num_list)
    else:
        num_list.append(num_list[-1]*2)
    answer = num_list
    return answer