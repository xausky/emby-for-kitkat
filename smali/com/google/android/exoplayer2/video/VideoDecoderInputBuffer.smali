.class public Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "VideoDecoderInputBuffer.java"


# instance fields
.field public colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-void
.end method
