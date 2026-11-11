---
id: hosting-realtime
title: 호스팅·실시간 통신 플랫폼 선택
type: research
claimed_by: null
status: closed
---

# 호스팅·실시간 통신 플랫폼 선택

## Question

공개 URL 배포, 2인 실시간 방 동기화(WebSocket 등), 관리자 덱의 영구 저장을 무료 또는 저비용으로 함께 만족하는 플랫폼은 무엇인가? 후보: Cloudflare Workers + Durable Objects, PartyKit, Supabase Realtime + DB, Firebase, Fly.io + Socket.IO. 비교 기준: 무료 한도, 콜드 스타트, 저장소, 배포 난이도.

## Blocked by

(없음)

## Resolution

사용자 결정 (2026-11-11): 개인 쿠버네티스 서버에 배포하고, Istio Gateway와 VirtualService로 공개 URL을 노출한다. 배포는 수동으로 한다. 외부 PaaS 비교 조사는 하지 않는다.

영향:
- 실시간 통신은 클러스터 안의 자체 서버(WebSocket)가 맡는다. Istio VirtualService는 WebSocket 업그레이드를 기본으로 통과시킨다.
- 덱 저장소와 방 상태를 어디에 둘지는 새 티켓 [서버 상태·덱 저장소 구성](server-state-storage.md)으로 넘긴다.
