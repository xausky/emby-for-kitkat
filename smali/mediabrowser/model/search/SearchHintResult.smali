.class public Lmediabrowser/model/search/SearchHintResult;
.super Ljava/lang/Object;
.source "SearchHintResult.java"


# instance fields
.field private SearchHints:[Lmediabrowser/model/search/SearchHint;

.field private TotalRecordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSearchHints()[Lmediabrowser/model/search/SearchHint;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/search/SearchHintResult;->SearchHints:[Lmediabrowser/model/search/SearchHint;

    return-object v0
.end method

.method public final getTotalRecordCount()I
    .locals 1

    .line 31
    iget v0, p0, Lmediabrowser/model/search/SearchHintResult;->TotalRecordCount:I

    return v0
.end method

.method public final setSearchHints([Lmediabrowser/model/search/SearchHint;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/search/SearchHintResult;->SearchHints:[Lmediabrowser/model/search/SearchHint;

    return-void
.end method

.method public final setTotalRecordCount(I)V
    .locals 0

    .line 35
    iput p1, p0, Lmediabrowser/model/search/SearchHintResult;->TotalRecordCount:I

    return-void
.end method
