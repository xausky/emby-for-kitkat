.class public Ltv/emby/embyatv/model/FilterOptions;
.super Ljava/lang/Object;
.source "FilterOptions.java"


# instance fields
.field private favoriteOnly:Z

.field private fourKOnly:Z

.field private genres:[Ljava/lang/String;

.field private hdOnly:Z

.field private officialRatings:[Ljava/lang/String;

.field private sdOnly:Z

.field private studios:[Ljava/lang/String;

.field private tags:[Ljava/lang/String;

.field private threeDOnly:Z

.field private unwatchedOnly:Z

.field private watchedOnly:Z

.field private years:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 2

    .line 42
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->unwatchedOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->favoriteOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->watchedOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-boolean v1, p0, Ltv/emby/embyatv/model/FilterOptions;->favoriteOnly:Z

    if-eqz v1, :cond_1

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    iget-boolean v1, p0, Ltv/emby/embyatv/model/FilterOptions;->unwatchedOnly:Z

    if-eqz v1, :cond_2

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Ltv/emby/embyatv/model/FilterOptions;->watchedOnly:Z

    if-eqz v1, :cond_3

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsPlayed:Lmediabrowser/model/querying/ItemFilter;

    goto :goto_0

    .line 48
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Ltv/emby/embyatv/model/FilterOptions;->genres:[Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialRatings()[Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/model/FilterOptions;->officialRatings:[Ljava/lang/String;

    return-object v0
.end method

.method public getStudios()[Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Ltv/emby/embyatv/model/FilterOptions;->studios:[Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/model/FilterOptions;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public getYears()[Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/model/FilterOptions;->years:[Ljava/lang/String;

    return-object v0
.end method

.method public is3dOnly()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->threeDOnly:Z

    return v0
.end method

.method public is4KOnly()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->fourKOnly:Z

    return v0
.end method

.method public isFavoriteOnly()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->favoriteOnly:Z

    return v0
.end method

.method public isHdOnly()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->hdOnly:Z

    return v0
.end method

.method public isSdOnly()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->sdOnly:Z

    return v0
.end method

.method public isUnwatchedOnly()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->unwatchedOnly:Z

    return v0
.end method

.method public isWatchedOnly()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Ltv/emby/embyatv/model/FilterOptions;->watchedOnly:Z

    return v0
.end method

.method public set3dOnly(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->threeDOnly:Z

    return-void
.end method

.method public set4KOnly(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->fourKOnly:Z

    return-void
.end method

.method public setFavoriteOnly(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->favoriteOnly:Z

    return-void
.end method

.method public setGenres([Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Ltv/emby/embyatv/model/FilterOptions;->genres:[Ljava/lang/String;

    return-void
.end method

.method public setHdOnly(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->hdOnly:Z

    return-void
.end method

.method public setOfficialRatings([Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Ltv/emby/embyatv/model/FilterOptions;->officialRatings:[Ljava/lang/String;

    return-void
.end method

.method public setSdOnly(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->sdOnly:Z

    return-void
.end method

.method public setStudios([Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/model/FilterOptions;->studios:[Ljava/lang/String;

    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ltv/emby/embyatv/model/FilterOptions;->tags:[Ljava/lang/String;

    return-void
.end method

.method public setUnwatchedOnly(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->unwatchedOnly:Z

    return-void
.end method

.method public setWatchedOnly(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Ltv/emby/embyatv/model/FilterOptions;->watchedOnly:Z

    return-void
.end method

.method public setYears([Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltv/emby/embyatv/model/FilterOptions;->years:[Ljava/lang/String;

    return-void
.end method
