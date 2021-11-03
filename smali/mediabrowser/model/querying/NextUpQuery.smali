.class public Lmediabrowser/model/querying/NextUpQuery;
.super Ljava/lang/Object;
.source "NextUpQuery.java"


# instance fields
.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private Limit:Ljava/lang/Integer;

.field private ParentId:Ljava/lang/String;

.field private SeriesId:Ljava/lang/String;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/NextUpQuery;->setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V

    return-void
.end method


# virtual methods
.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 132
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 104
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 90
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/querying/NextUpQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lmediabrowser/model/querying/NextUpQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->SeriesId:Ljava/lang/String;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/querying/NextUpQuery;->UserId:Ljava/lang/String;

    return-void
.end method
