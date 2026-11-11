---
id: server-state-storage
title: 서버 상태·덱 저장소 구성
type: grilling
claimed_by: null
status: closed
---

# 서버 상태·덱 저장소 구성

## Question

쿠버네티스에서 관리자 덱을 어디에 영구 저장하는가? (PVC 위의 SQLite나 JSON 파일, 클러스터 안의 기존 PostgreSQL 같은 DB, ConfigMap) 진행 중인 방 상태는 서버 메모리에만 두고 replica를 1개로 고정하는가, 여러 replica와 공유 저장소(Redis 등)를 쓰는가?

## Blocked by

(없음)

## Resolution

사용자 결정 (2026-11-11):
- 덱 저장소: PVC(ReadWriteOnce) 위에 SQLite 파일 하나를 두고, 앱 컨테이너가 직접 연다.
- replica: 1개로 고정한다. Deployment는 `strategy: Recreate`로 두어 SQLite 파일을 두 파드가 동시에 쓰지 않게 한다.
- 방 상태: 서버 메모리에만 둔다. 파드가 재시작되거나 재배포되면 진행 중인 방은 사라지고, 덱은 남는다.

영향: [방 생성·입장 흐름](room-flow.md)에서 말하는 재접속은 같은 파드가 살아 있는 동안에만 가능하다.
