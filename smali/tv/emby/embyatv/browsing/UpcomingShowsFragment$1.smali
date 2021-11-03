.class Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;
.super Lmediabrowser/apiinteraction/Response;
.source "UpcomingShowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/UpcomingShowsFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 73
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v1, "Error retrieving upcoming episodes"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving upcoming episodes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 8

    .line 46
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/dto/BaseItemDto;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 54
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x6

    .line 55
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v7, v6, :cond_0

    .line 57
    iget-object v6, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->createNewRow(Ljava/lang/String;Ljava/util/List;)Landroidx/leanback/widget/ListRow;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v0, v5

    .line 62
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->createNewRow(Ljava/lang/String;Ljava/util/List;)Landroidx/leanback/widget/ListRow;

    .line 65
    iget-object p1, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->setInitialFocus()V

    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/UpcomingShowsFragment$1;->this$0:Ltv/emby/embyatv/browsing/UpcomingShowsFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/UpcomingShowsFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "No upcoming episodes"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
