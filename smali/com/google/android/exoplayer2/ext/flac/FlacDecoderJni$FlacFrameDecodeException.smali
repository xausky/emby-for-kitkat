.class public final Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException;
.super Ljava/lang/Exception;
.source "FlacDecoderJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacFrameDecodeException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException;->errorCode:I

    return-void
.end method
