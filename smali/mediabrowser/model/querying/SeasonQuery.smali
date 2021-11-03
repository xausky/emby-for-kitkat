.class public Lmediabrowser/model/querying/SeasonQuery;
.super Ljava/lang/Object;
.source "SeasonQuery.java"


# instance fields
.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private IsMissing:Ljava/lang/Boolean;

.field private IsSpecialSeason:Ljava/lang/Boolean;

.field private IsVirtualUnaired:Ljava/lang/Boolean;

.field private SeriesId:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/SeasonQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    return-void
.end method


# virtual methods
.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getIsMissing()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->IsMissing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSpecialSeason()Ljava/lang/Boolean;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->IsSpecialSeason:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsVirtualUnaired()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/querying/SeasonQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setIsMissing(Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->IsMissing:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSpecialSeason(Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->IsSpecialSeason:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsVirtualUnaired(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSeriesId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->SeriesId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/querying/SeasonQuery;->UserId:Ljava/lang/String;

    return-void
.end method
