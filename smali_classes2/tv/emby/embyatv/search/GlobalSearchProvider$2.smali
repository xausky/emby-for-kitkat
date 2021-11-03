.class Ltv/emby/embyatv/search/GlobalSearchProvider$2;
.super Lmediabrowser/apiinteraction/Response;
.source "GlobalSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/search/GlobalSearchProvider;->getSearchResult(Ljava/lang/String;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/search/GlobalSearchProvider;)V
    .locals 0

    .line 130
    iput-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 139
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting search results"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$002(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/querying/ItemsResult;)Lmediabrowser/model/querying/ItemsResult;

    .line 141
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$102(Ltv/emby/embyatv/search/GlobalSearchProvider;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 1

    .line 133
    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    invoke-static {v0, p1}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$002(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/querying/ItemsResult;)Lmediabrowser/model/querying/ItemsResult;

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$2;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$102(Ltv/emby/embyatv/search/GlobalSearchProvider;Z)Z

    return-void
.end method
