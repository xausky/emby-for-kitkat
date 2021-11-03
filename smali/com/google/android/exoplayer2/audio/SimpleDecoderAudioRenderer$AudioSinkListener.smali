.class final Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 8

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    return-void
.end method
