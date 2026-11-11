---
id: tech-stack
title: 프론트엔드·서버 기술 스택
type: grilling
claimed_by: null
status: closed
---

# 프론트엔드·서버 기술 스택

## Question

선택한 플랫폼 위에서 어떤 프레임워크와 언어를 쓰는가? (예: 순수 HTML/JS, React/Vite, Svelte, 서버 언어)

## Blocked by

- hosting-realtime

## Resolution

사용자 결정 (2026-11-11):
- 서버: Go. WebSocket 게임 서버, SQLite 덱 저장소, 관리자 API를 바이너리 하나에 담는다.
- 프론트엔드: React + Vite + TypeScript. 게임 화면과 관리자 화면을 만든다.
- 패키징: Vite 빌드 결과물을 Go `embed`로 바이너리에 넣는다. 컨테이너 하나, 포트 하나로 정적 파일, API, WebSocket을 모두 서빙한다. 멀티스테이지 Dockerfile을 쓴다(Node로 빌드 → Go로 빌드 → 최소 런타임 이미지).
- 서버와 프론트엔드의 언어가 달라서 WebSocket 메시지 타입은 양쪽에 따로 정의한다. 메시지 스키마는 구현 단계에서 정한다.
