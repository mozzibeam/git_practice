#  현재 working directory, staging area 상태 확인
git status
# .은 모든 추가사항 add
git add.
# 특정파일만 add할 경우 (경로까지 포함)
git add testfolder/test1.txt
# commit을 통해 메시지타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫줄:타이틀, 두번째줄부터 내용
git commit
# commit이력 확인
git log
git log --oneline
# head하단의 log만 보이는게 아니라 모든 commit이력을 조회
# head : 현재 checkout하고 있는 commitID를 의미미
git log --all
# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# 특정 commit ID로 전환
git checkout 커밋ID
# 특정 branch로의 전환
git checkout 브랜치명

# pull : 원격의 변경사항을 local로 내려받는것(fetch + merge)
git pull origin main
# fetch : 변경사항을 local로 가져오되 merge는 하지 않는 것
git fetch origin main
# 만약 모든 브랜치의 변경사항을 가져오려면
git fetch -all
# 버전(commit간 or branch간)별 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff branch1 branch2

# 가장 최신의 커밋 취소
git revert head~1
git revert head^

# 이미 push된 commit사항 되돌리기 (완전한취소아님) : commitID생성
git revert 커밋ID

# 마지막 저장사항 담아놓는 stack 구조 관련 문법들들
git stash
git stash pop
git stash list
git stash clear

# 태그관련 명령어
# 가장 최신의 commit에 tag가 명시
git tag 테그버전명(v1.0)
# 태그 릴리즈 : 코드의 commit, push와 별개로 작업진행행
git push originn 테그버전명
# 태그 목록 조회
git tag

# branch 생성
# 현재 체크아웃 되어 있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명
# 새로운 작업 시작 시에 main을 최신화 한 후에 main을 기준으로 branch생성