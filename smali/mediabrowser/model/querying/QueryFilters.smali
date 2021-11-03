.class public Lmediabrowser/model/querying/QueryFilters;
.super Ljava/lang/Object;
.source "QueryFilters.java"


# instance fields
.field private Genres:[Ljava/lang/String;

.field private OfficialRatings:[Ljava/lang/String;

.field private Tags:[Ljava/lang/String;

.field private Years:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/QueryFilters;->setGenres([Ljava/lang/String;)V

    .line 45
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/QueryFilters;->setTags([Ljava/lang/String;)V

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/QueryFilters;->setOfficialRatings([Ljava/lang/String;)V

    .line 47
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/QueryFilters;->setYears([I)V

    return-void
.end method


# virtual methods
.method public final getGenres()[Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/querying/QueryFilters;->Genres:[Ljava/lang/String;

    return-object v0
.end method

.method public final getOfficialRatings()[Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lmediabrowser/model/querying/QueryFilters;->OfficialRatings:[Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()[Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/querying/QueryFilters;->Tags:[Ljava/lang/String;

    return-object v0
.end method

.method public final getYears()[I
    .locals 1

    .line 35
    iget-object v0, p0, Lmediabrowser/model/querying/QueryFilters;->Years:[I

    return-object v0
.end method

.method public final setGenres([Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/querying/QueryFilters;->Genres:[Ljava/lang/String;

    return-void
.end method

.method public final setOfficialRatings([Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmediabrowser/model/querying/QueryFilters;->OfficialRatings:[Ljava/lang/String;

    return-void
.end method

.method public final setTags([Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/querying/QueryFilters;->Tags:[Ljava/lang/String;

    return-void
.end method

.method public final setYears([I)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmediabrowser/model/querying/QueryFilters;->Years:[I

    return-void
.end method
