.class Ltv/emby/embyatv/details/FullDetailsActivity$5;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->loadItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/ChannelInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$us:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 370
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->val$us:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 370
    check-cast p1, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$5;->onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 4

    .line 373
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iput-object p1, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    .line 374
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mItemId:Ljava/lang/String;

    .line 375
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mItemId:Ljava/lang/String;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/DetailItemLoadResponse;

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$5;->val$us:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {v2, v3}, Ltv/emby/embyatv/details/DetailItemLoadResponse;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
