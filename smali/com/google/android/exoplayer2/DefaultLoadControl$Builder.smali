.class public final Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private createDefaultLoadControlCalled:Z

.field private maxBufferMs:I

.field private minBufferAudioMs:I

.field private minBufferVideoMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferAudioMs:I

    const v0, 0xc350

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferVideoMs:I

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    const/16 v0, 0x9c4

    .line 109
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    const/16 v0, 0x1388

    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 114
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-void
.end method


# virtual methods
.method public createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;
    .locals 14

    .line 218
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 219
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 223
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    iget-object v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget v5, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferAudioMs:I

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferVideoMs:I

    iget v7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    iget v8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iget v9, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    iget v10, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iget v12, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iget-boolean v13, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIIZIZ)V

    return-object v0
.end method

.method public setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBackBuffer(IZ)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    const-string v1, "backBufferDurationMs"

    const-string v2, "0"

    .line 210
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 211
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 212
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v0, "bufferForPlaybackMs"

    const-string v1, "0"

    const/4 v2, 0x0

    .line 151
    invoke-static {p3, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "bufferForPlaybackAfterRebufferMs"

    const-string v1, "0"

    .line 152
    invoke-static {p4, v2, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    const-string v1, "bufferForPlaybackMs"

    .line 154
    invoke-static {p1, p3, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    const-string v1, "bufferForPlaybackAfterRebufferMs"

    .line 155
    invoke-static {p1, p4, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "maxBufferMs"

    const-string v1, "minBufferMs"

    .line 160
    invoke-static {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->access$000(IILjava/lang/String;Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferAudioMs:I

    .line 162
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->minBufferVideoMs:I

    .line 163
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    .line 164
    iput p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    .line 165
    iput p4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 194
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    return-object p0
.end method

.method public setTargetBufferBytes(I)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControlCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 179
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    return-object p0
.end method
