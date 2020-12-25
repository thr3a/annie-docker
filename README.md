# 使うとき

docker run --rm -w /app -v $(pwd):/app amanekey/annie 'https://www.bilibili.com/video/BV1Ct411L7Kd'

# 自分でビルド

```
docker build -t annie .
```

# 参考リンク

https://thr3a.hatenablog.com/entry/20201225/1608858465