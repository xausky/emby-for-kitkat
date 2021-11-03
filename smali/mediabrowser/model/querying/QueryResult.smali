.class public Lmediabrowser/model/querying/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private TotalRecordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lmediabrowser/model/querying/QueryResult;->Items:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getTotalRecordCount()I
    .locals 1

    .line 28
    iget v0, p0, Lmediabrowser/model/querying/QueryResult;->TotalRecordCount:I

    return v0
.end method

.method public final setItems([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lmediabrowser/model/querying/QueryResult;->Items:[Ljava/lang/Object;

    return-void
.end method

.method public final setTotalRecordCount(I)V
    .locals 0

    .line 32
    iput p1, p0, Lmediabrowser/model/querying/QueryResult;->TotalRecordCount:I

    return-void
.end method
