.class public Lmediabrowser/model/livetv/RecommendedProgramQuery;
.super Ljava/lang/Object;
.source "RecommendedProgramQuery.java"


# instance fields
.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private HasAired:Ljava/lang/Boolean;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private IsAiring:Ljava/lang/Boolean;

.field private IsKids:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->setEnableTotalRecordCount(Z)V

    return-void
.end method


# virtual methods
.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getHasAired()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->HasAired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsAiring()Ljava/lang/Boolean;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsAiring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 170
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 147
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 133
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 156
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 184
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setHasAired(Ljava/lang/Boolean;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->HasAired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsAiring(Ljava/lang/Boolean;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsAiring:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmediabrowser/model/livetv/RecommendedProgramQuery;->UserId:Ljava/lang/String;

    return-void
.end method
