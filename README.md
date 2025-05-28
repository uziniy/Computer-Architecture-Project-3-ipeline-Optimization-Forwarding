# Project 3 - Pipeline Optimization & Forwarding Simulation

## 개요
파이프라인 구조를 갖는 MIPS 기반 프로세서에서 Shell Sort 알고리즘을 구현하고, 성능 병목의 원인을 분석한 뒤, S/W 및 H/W forwarding 기법을 통해 최적화를 수행하였습니다. 이를 통해 파이프라인에서 발생하는 다양한 해저드(Data/Control)를 분석하고, forwarding의 유무에 따른 명령어 실행 속도 차이를 실험하였습니다.

## 주요 목표
- Shell Sort 알고리즘 기반 MIPS 어셈블리 코드 작성
- Data 및 Control Hazard 분석
- S/W forwarding을 통한 nop 삽입 최적화
- H/W forwarding 환경에서 성능 개선 확인
- Forwarding 유무에 따른 사이클 수 비교 및 분석

## 기술 요소
- MIPS Assembly
- Pipeline Simulation
- Data Hazard & Control Hazard
- S/W forwarding: NOP 수동 삽입
- H/W forwarding: forwarding unit 적용

## 실험 결과 요약
| 환경              | 총 사이클 수 | 특이사항                                 |
|------------------|--------------|------------------------------------------|
| S/W forwarding   | 약 4260      | NOP 수동 삽입, 성능 저하 있음           |
| H/W forwarding   | 약 3640      | forwarding unit 덕분에 성능 대폭 향상   |

## 배운 점
forwarding의 개념과 효과를 직접 실험하며, 단순한 코드 작성이 아닌 하드웨어 구조와 실행 방식까지 고려한 최적화의 중요성을 체감하였습니다. 이는 하드웨어와 소프트웨어의 경계에서 병목을 식별하고 해결하는 실무 능력을 키우는 데에 중요한 경험이었습니다.
