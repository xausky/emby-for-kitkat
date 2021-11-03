.class public Lmediabrowser/model/querying/ItemCountsQuery;
.super Ljava/lang/Object;
.source "ItemCountsQuery.java"


# instance fields
.field private IsFavorite:Ljava/lang/Boolean;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIsFavorite()Ljava/lang/Boolean;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/querying/ItemCountsQuery;->IsFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/querying/ItemCountsQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setIsFavorite(Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/querying/ItemCountsQuery;->IsFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/querying/ItemCountsQuery;->UserId:Ljava/lang/String;

    return-void
.end method
