.class public final Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
.super Ljava/lang/Object;
.source "BufferSizeAdaptationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;,
        Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_HYSTERESIS_BUFFER_MS:I = 0x1388

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_START_UP_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_START_UP_MIN_BUFFER_FOR_QUALITY_INCREASE_MS:I = 0x2710


# instance fields
.field private allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private buildCalled:Z

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private dynamicFormatFilter:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

.field private hysteresisBufferMs:I

.field private maxBufferMs:I

.field private minBufferMs:I

.field private startUpBandwidthFraction:F

.field private startUpMinBufferForQualityIncreaseMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/16 v0, 0x3a98

    .line 120
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->minBufferMs:I

    const v0, 0xc350

    .line 121
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    const/16 v0, 0x9c4

    .line 122
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackMs:I

    const/16 v0, 0x1388

    .line 123
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackAfterRebufferMs:I

    .line 124
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->hysteresisBufferMs:I

    const v0, 0x3f333333    # 0.7f

    .line 125
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpBandwidthFraction:F

    const/16 v0, 0x2710

    .line 126
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpMinBufferForQualityIncreaseMs:I

    .line 127
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;->NO_FILTER:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->dynamicFormatFilter:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->minBufferMs:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->hysteresisBufferMs:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpBandwidthFraction:F

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpMinBufferForQualityIncreaseMs:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->dynamicFormatFilter:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method


# virtual methods
.method public buildPlayerComponents()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;",
            "Lcom/google/android/exoplayer2/LoadControl;",
            ">;"
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->hysteresisBufferMs:I

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->minBufferMs:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 242
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 243
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    .line 245
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const v1, 0x7fffffff

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setTargetBufferBytes(I)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackMs:I

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackAfterRebufferMs:I

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    .line 257
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;-><init>(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;)V

    .line 279
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 152
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 177
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->minBufferMs:I

    .line 178
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->maxBufferMs:I

    .line 179
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackMs:I

    .line 180
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setDynamicFormatFilter(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 230
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->dynamicFormatFilter:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    return-object p0
.end method

.method public setHysteresisBufferMs(I)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 195
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->hysteresisBufferMs:I

    return-object p0
.end method

.method public setStartUpTrackSelectionParameters(FI)Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 215
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpBandwidthFraction:F

    .line 216
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder;->startUpMinBufferForQualityIncreaseMs:I

    return-object p0
.end method
