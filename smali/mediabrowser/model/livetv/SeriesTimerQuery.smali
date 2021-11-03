.class public Lmediabrowser/model/livetv/SeriesTimerQuery;
.super Ljava/lang/Object;
.source "SeriesTimerQuery.java"


# instance fields
.field private SortBy:Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    invoke-static {}, Lmediabrowser/model/entities/SortOrder;->values()[Lmediabrowser/model/entities/SortOrder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method


# virtual methods
.method public final getSortBy()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerQuery;->SortBy:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/livetv/SeriesTimerQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final setSortBy(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerQuery;->SortBy:Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/livetv/SeriesTimerQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method
