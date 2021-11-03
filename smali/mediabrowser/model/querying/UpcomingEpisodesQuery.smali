.class public Lmediabrowser/model/querying/UpcomingEpisodesQuery;
.super Ljava/lang/Object;
.source "UpcomingEpisodesQuery.java"


# instance fields
.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private Limit:Ljava/lang/Integer;

.field private ParentId:Ljava/lang/String;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    new-array v0, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V

    return-void
.end method


# virtual methods
.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 117
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 89
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->UserId:Ljava/lang/String;

    return-void
.end method
