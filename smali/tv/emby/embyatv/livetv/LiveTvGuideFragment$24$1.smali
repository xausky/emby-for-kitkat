.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;
.super Lmediabrowser/apiinteraction/Response;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->run()V
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
.field final synthetic this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;)V
    .locals 0

    .line 1208
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1217
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to get program details"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1218
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1208
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 1211
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2902(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 1212
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$24;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    return-void
.end method
