from rest_framework.throttling import AnonRateThrottle


# 限流类，5次/分钟
class MyRateThrottle(AnonRateThrottle):
    THROTTLE_RATES = {"anon": "5/min"}
