---
id: admin-access
title: 관리자 편집 화면 접근 보호
type: grilling
claimed_by: null
status: closed
---

# 관리자 편집 화면 접근 보호

## Question

공개 URL에서 덱 편집 화면을 누가 쓸 수 있게 하는가? (공유 비밀번호 하나, 관리자 계정, 플랫폼 인증) 관리자는 몇 명인가? 일괄 입력(붙여넣기, CSV)이 필요한가, 카드를 한 장씩 입력하면 되는가?

## Blocked by

- hosting-realtime

## Resolution

사용자 결정 (2026-11-11):
- 접근 보호: 공유 비밀번호 1개를 쓴다. 비밀번호는 쿠버네티스 Secret에서 환경변수로 주입하고, 로그인하면 HttpOnly 세션 쿠키를 발급한다. 관리자를 구분하지 않는다.
- 입력 방식: 카드를 한 장씩 추가·수정·삭제할 수 있다. 여러 줄을 붙여넣으면 한 줄이 카드 한 장으로 등록된다. 덱 전체를 JSON/CSV로 가져오고 내보낼 수 있다.
- JSON/CSV의 컬럼 구성은 [카드·덱 데이터 모델](card-model.md)이 정해진 뒤에 확정한다.
