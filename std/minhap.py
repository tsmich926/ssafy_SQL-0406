dr=[1,-1,0,0]
dc=[0,0,1,-1]



def gogo(row,col,sm):
    global ans

    if sm > ans: #지금하고 있는게 이전 값보다 크면 더 볼 필요 없음
        return

    if row == N-1 and col == M-1:
        ans = min(sm,ans)
        return

    for i in range(4): #오른쪽이나 아래로 이동해야하니까
        nr = row+dr[i]
        nc = col+dc[i]
        if 0<=nr<N and 0<=nc<M: #좌표 유효성검사
            gogo(nr,nc,sm+arr[nr][nc])



N,M= map(int,input().split()) #가로세로칸 수
#N*N의 배열
arr = [list(map(int,input().split())) for _ in range(N)]
ans = 50000

gogo(0,0,0) #(0,0)에서부터 시작해서 값은 0을 가지고 탐색한다

print(f'{ans}')