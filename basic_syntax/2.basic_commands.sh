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
git log --oneline

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force
