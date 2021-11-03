.class Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;
.super Lmediabrowser/apiinteraction/Response;
.source "SuggestedMoviesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

.field final synthetic val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->this$0:Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 10

    .line 67
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 68
    new-instance v4, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v4}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 69
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    const/16 v5, 0xa

    .line 70
    new-array v5, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v6, v5, v1

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v7, v5, v6

    sget-object v6, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const/16 v6, 0x8

    sget-object v8, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v8, v5, v6

    const/16 v6, 0x9

    sget-object v8, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/model/querying/SimilarItemsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 73
    iget-object v5, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->this$0:Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->this$0:Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

    iget-object v8, v8, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v9, 0x7f100458

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    invoke-direct {v6, v3, v4, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment$1;->this$0:Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/SuggestedMoviesFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
