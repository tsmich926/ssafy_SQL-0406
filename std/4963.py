#상하좌우 대각선4방향
dr = [1,-1,0,0,-1,-1,1,1]
dc = [0,0,-1,1,-1,1,1,-1]

# 0,0이 나올때까지 입력 받아야 한다.
while True:
    w,h = map(int,input().split())
    if w == 0 and h == 0:
        break
    for _ in range(h):
        arr=[list(map(int,input().split())) for _ in range(h)]


