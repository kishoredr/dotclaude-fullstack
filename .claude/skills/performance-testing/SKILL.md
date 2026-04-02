---
name: performance-testing
description: Use when load testing APIs, profiling slow code,
  or benchmarking before a major release.
---
Test profiles (k6 or Artillery):
- Smoke:  1 VU, 1min — basic sanity check
- Load:   ramp to expected peak over 5min, hold 10min
- Stress: 2× expected peak — find the breaking point
- Soak:   normal load for 1hr — detect memory leaks

Metrics to capture every run:
- P50, P95, P99 latency per endpoint
- Error rate (target < 0.1%)
- Throughput in req/sec
- DB connection pool saturation
- CPU and memory at each load level

Node.js profiling tools:
- clinic.js doctor → flamegraph for CPU bottlenecks
- --prof flag → V8 built-in profiler
- Track event loop lag — target < 50ms under load
