.class public final Lcom/google/android/exoplayer2/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDefaultPositionMs()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJZZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    .line 215
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    move-object v1, p2

    .line 216
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    move-object v1, p3

    .line 217
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    move-wide v1, p4

    .line 218
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    move-wide v1, p6

    .line 219
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    move v1, p8

    .line 220
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    move v1, p9

    .line 221
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    move v1, p10

    .line 222
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    move-wide v1, p11

    .line 223
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    move-wide/from16 v1, p13

    .line 224
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move/from16 v1, p15

    .line 225
    iput v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v1, p16

    .line 226
    iput v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 v1, p17

    .line 227
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-object v0
.end method
