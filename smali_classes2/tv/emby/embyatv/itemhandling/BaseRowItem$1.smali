.class Ltv/emby/embyatv/itemhandling/BaseRowItem$1;
.super Lmediabrowser/apiinteraction/Response;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/BaseRowItem;->updateAsChannelOrProgram()V
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
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 207
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 231
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to update channel row item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 4

    .line 210
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Attempt to update unsupported row item type %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$202(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/livetv/ChannelInfoDto;)Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 213
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$300(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$402(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 219
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$300(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
