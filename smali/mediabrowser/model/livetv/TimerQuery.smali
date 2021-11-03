.class public Lmediabrowser/model/livetv/TimerQuery;
.super Ljava/lang/Object;
.source "TimerQuery.java"


# instance fields
.field private ChannelId:Ljava/lang/String;

.field private IsActive:Ljava/lang/Boolean;

.field private IsScheduled:Ljava/lang/Boolean;

.field private SeriesTimerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerQuery;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsActive()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerQuery;->IsActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsScheduled()Ljava/lang/Boolean;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerQuery;->IsScheduled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerQuery;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerQuery;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setIsActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerQuery;->IsActive:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsScheduled(Ljava/lang/Boolean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerQuery;->IsScheduled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerQuery;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method
