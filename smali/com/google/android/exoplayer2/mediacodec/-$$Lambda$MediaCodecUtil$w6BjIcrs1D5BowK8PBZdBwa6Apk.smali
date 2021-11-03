.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$w6BjIcrs1D5BowK8PBZdBwa6Apk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$w6BjIcrs1D5BowK8PBZdBwa6Apk;->f$0:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$w6BjIcrs1D5BowK8PBZdBwa6Apk;->f$0:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$sortByScore$3(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
