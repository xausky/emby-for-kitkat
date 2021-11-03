.class public Lmediabrowser/model/search/SearchQuery;
.super Ljava/lang/Object;
.source "SearchQuery.java"


# instance fields
.field private IncludeArtists:Z

.field private IncludeGenres:Z

.field private IncludeItemTypes:[Ljava/lang/String;

.field private IncludeMedia:Z

.field private IncludePeople:Z

.field private IncludeStudios:Z

.field private Limit:Ljava/lang/Integer;

.field private ParentId:Ljava/lang/String;

.field private SearchTerm:Ljava/lang/String;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludeArtists(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludeGenres(Z)V

    .line 135
    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludeMedia(Z)V

    .line 136
    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludePeople(Z)V

    .line 137
    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludeStudios(Z)V

    const/4 v0, 0x0

    .line 139
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/search/SearchQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getIncludeArtists()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludeArtists:Z

    return v0
.end method

.method public final getIncludeGenres()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludeGenres:Z

    return v0
.end method

.method public final getIncludeItemTypes()[Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getIncludeMedia()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludeMedia:Z

    return v0
.end method

.method public final getIncludePeople()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludePeople:Z

    return v0
.end method

.method public final getIncludeStudios()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lmediabrowser/model/search/SearchQuery;->IncludeStudios:Z

    return v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->SearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/search/SearchQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setIncludeArtists(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludeArtists:Z

    return-void
.end method

.method public final setIncludeGenres(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludeGenres:Z

    return-void
.end method

.method public final setIncludeItemTypes([Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setIncludeMedia(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludeMedia:Z

    return-void
.end method

.method public final setIncludePeople(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludePeople:Z

    return-void
.end method

.method public final setIncludeStudios(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lmediabrowser/model/search/SearchQuery;->IncludeStudios:Z

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->SearchTerm:Ljava/lang/String;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/search/SearchQuery;->UserId:Ljava/lang/String;

    return-void
.end method
