---
id: server-state-storage
title: 서버 상태·덱 저장소 구성
type: grilling
claimed_by: null
status: open
---

# 서버 상태·덱 저장소 구성

## Question

쿠버네티스에서 관리자 덱을 어디에 영구 저장하는가? (PVC 위의 SQLite나 JSON 파일, 클러스터 안의 기존 PostgreSQL 같은 DB, ConfigMap) 진행 중인 방 상태는 서버 메모리에만 두고 replica를 1개로 고정하는가, 여러 replica와 공유 저장소(Redis 등)를 쓰는가?

## Blocked by

(없음)
