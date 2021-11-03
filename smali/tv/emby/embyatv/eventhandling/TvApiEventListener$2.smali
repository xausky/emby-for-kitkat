.class Ltv/emby/embyatv/eventhandling/TvApiEventListener$2;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApiEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/eventhandling/TvApiEventListener;->onBrowseCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/BrowseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$2;->this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener$2;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 168
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;Z)V

    return-void
.end method
