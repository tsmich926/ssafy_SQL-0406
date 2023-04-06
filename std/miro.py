from collections import deque

#상하좌우 인접한 곳으로 움직 일 수 있음
dr=[1,-1,0,0]
dc=[0,0,1,-1]

def bfs(row,col):
    if  row==N-1 and col==M-1:
        return arr[N-1][M-1]
    Q = deque([row,col])
    while Q:
        a,b = Q.popleft() #먼저 들어온 것을 빼냄
        if arr[a][b] == 1 and visited[a][b]==0:
            visited[a][b] = 1
            for i in range(4):
                newr = row+dr[i]
                newc = col+dc[i]
                if 0<= newr<N and 0<=newc<M and visited[newr][newc]== 0:
                    arr[a][b] += 1
                    bfs(newr,newc)


N,M = map(int,input().split())
arr = [list(map(int,input().split()))]
visited = [[0]*N for _ in range(M)]
print(bfs(0,0))