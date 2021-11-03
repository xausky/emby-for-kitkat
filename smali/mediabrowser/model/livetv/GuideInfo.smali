.class public Lmediabrowser/model/livetv/GuideInfo;
.super Ljava/lang/Object;
.source "GuideInfo.java"


# instance fields
.field private EndDate:Ljava/util/Date;

.field private StartDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/livetv/GuideInfo;->StartDate:Ljava/util/Date;

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/livetv/GuideInfo;->EndDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getEndDate()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/livetv/GuideInfo;->EndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/GuideInfo;->StartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/livetv/GuideInfo;->EndDate:Ljava/util/Date;

    return-void
.end method

.method public final setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/GuideInfo;->StartDate:Ljava/util/Date;

    return-void
.end method
