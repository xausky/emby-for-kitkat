.class final Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;->this$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;->this$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
