.class public Lmediabrowser/model/querying/ItemsByNameQuery;
.super Ljava/lang/Object;
.source "ItemsByNameQuery.java"


# instance fields
.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private ExcludeItemTypes:[Ljava/lang/String;

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private ImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private IncludeItemTypes:[Ljava/lang/String;

.field private IsPlayed:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private MediaTypes:[Ljava/lang/String;

.field private NameLessThan:Ljava/lang/String;

.field private NameStartsWith:Ljava/lang/String;

.field private NameStartsWithOrGreater:Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private Recursive:Z

.field private SearchTerm:Ljava/lang/String;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 330
    new-array v1, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setImageTypes([Lmediabrowser/model/entities/ImageType;)V

    .line 331
    new-array v1, v0, [Lmediabrowser/model/querying/ItemFilter;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 332
    new-array v1, v0, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const/4 v1, 0x1

    .line 333
    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setRecursive(Z)V

    .line 334
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setMediaTypes([Ljava/lang/String;)V

    .line 335
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    .line 336
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setExcludeItemTypes([Ljava/lang/String;)V

    .line 337
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 338
    new-array v0, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V

    return-void
.end method


# virtual methods
.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 293
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 265
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getExcludeItemTypes()[Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ExcludeItemTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 102
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 117
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 279
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 192
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getIncludeItemTypes()[Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getIsPlayed()Ljava/lang/Boolean;
    .locals 1

    .line 251
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->IsPlayed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaTypes()[Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->MediaTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getNameLessThan()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameLessThan:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameStartsWith()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameStartsWith:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameStartsWithOrGreater()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameStartsWithOrGreater:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecursive()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Recursive:Z

    return v0
.end method

.method public final getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 74
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setExcludeItemTypes([Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ExcludeItemTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setIncludeItemTypes([Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setIsPlayed(Ljava/lang/Boolean;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->IsPlayed:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaTypes([Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->MediaTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setNameLessThan(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameLessThan:Ljava/lang/String;

    return-void
.end method

.method public final setNameStartsWith(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameStartsWith:Ljava/lang/String;

    return-void
.end method

.method public final setNameStartsWithOrGreater(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->NameStartsWithOrGreater:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setRecursive(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->Recursive:Z

    return-void
.end method

.method public final setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SearchTerm:Ljava/lang/String;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/querying/ItemsByNameQuery;->UserId:Ljava/lang/String;

    return-void
.end method
