.class public Lmediabrowser/model/querying/SimilarItemsQuery;
.super Ljava/lang/Object;
.source "SimilarItemsQuery.java"


# instance fields
.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Id:Ljava/lang/String;

.field private Limit:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/querying/SimilarItemsQuery;->UserId:Ljava/lang/String;

    return-void
.end method
