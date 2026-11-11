---
id: card-model
title: 카드·덱 데이터 모델
type: grilling
claimed_by: null
status: closed
---

# 카드·덱 데이터 모델

## Question

카드에는 어떤 필드가 있는가? (텍스트만인가, 보낸 사람 이름·프로필·이모지·이미지도 있는가?) 답장 카드는 아무 DM 카드에나 붙는가, 아니면 특정 DM 카드와 짝이 정해져 있는가? 덱은 하나인가, 여러 개를 두고 방마다 고르는가? 한 대화는 DM 1장 + 답장 1장인가, 여러 턴이 이어지는가?

## Blocked by

(없음)

## Resolution

사용자 결정 (2026-11-11):
- 조합: 자유 조합. 어떤 답장 카드든 어떤 DM 카드에나 붙일 수 있다. 짝을 지정하거나 태그로 매칭하지 않는다.
- 카드 필드: 텍스트만 넣는다. 보낸 사람 이름은 플레이어 닉네임을 쓰고, 이미지는 넣지 않는다.
- 대화 길이: 한 라운드는 DM 1장과 답장 1장, 말풍선 두 개로 끝난다.
- 덱: 덱을 여러 개 둘 수 있다. 덱마다 이름이 있고, 방장이 방을 만들 때 하나를 고른다.

데이터 모델:
- `deck(id, name, created_at)`
- `card(id, deck_id, kind ∈ {dm, reply}, text, created_at)`

JSON/CSV 형식 ([관리자 편집 화면 접근 보호](admin-access.md)의 남은 항목):
- CSV 컬럼: `deck,kind,text`. kind는 `dm` 또는 `reply`.
- JSON 형식: `{"decks":[{"name":"...","dm":["..."],"reply":["..."]}]}`
