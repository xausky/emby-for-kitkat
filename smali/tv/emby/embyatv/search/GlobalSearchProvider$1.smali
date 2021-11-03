.class Ltv/emby/embyatv/search/GlobalSearchProvider$1;
.super Lmediabrowser/apiinteraction/Response;
.source "GlobalSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/search/GlobalSearchProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$user:Lmediabrowser/model/dto/UserDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/dto/UserDto;[Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    iput-object p2, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->val$user:Lmediabrowser/model/dto/UserDto;

    iput-object p3, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 2

    .line 82
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object p1

    sget-object v0, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 83
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Configured server unavailable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$002(Ltv/emby/embyatv/search/GlobalSearchProvider;Lmediabrowser/model/querying/ItemsResult;)Lmediabrowser/model/querying/ItemsResult;

    .line 85
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$102(Ltv/emby/embyatv/search/GlobalSearchProvider;Z)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->val$user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setCurrentUser(Lmediabrowser/model/dto/UserDto;)V

    .line 89
    iget-object p1, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->this$0:Ltv/emby/embyatv/search/GlobalSearchProvider;

    iget-object v0, p0, Ltv/emby/embyatv/search/GlobalSearchProvider$1;->val$selectionArgs:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ltv/emby/embyatv/search/GlobalSearchProvider;->access$200(Ltv/emby/embyatv/search/GlobalSearchProvider;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
