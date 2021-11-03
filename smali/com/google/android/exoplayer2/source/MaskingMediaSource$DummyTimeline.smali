.class final Lcom/google/android/exoplayer2/source/MaskingMediaSource$DummyTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyTimeline"
.end annotation


# instance fields
.field private final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$DummyTimeline;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 345
    sget-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->DUMMY_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 8

    const/4 p1, 0x0

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->DUMMY_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    .line 335
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    .line 350
    sget-object p1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->DUMMY_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 19

    move-object/from16 v0, p2

    .line 311
    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    move-object/from16 v15, p0

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/MaskingMediaSource$DummyTimeline;->tag:Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJZZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
