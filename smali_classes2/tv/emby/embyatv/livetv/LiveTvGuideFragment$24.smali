.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1207
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Empty"

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    :goto_0
    return-void
.end method
