.class Ltv/emby/embyatv/presentation/MyChannelCardView$1;
.super Lmediabrowser/apiinteraction/Response;
.source "MyChannelCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/MyChannelCardView;->setItem(Lmediabrowser/model/livetv/ChannelInfoDto;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/presentation/MyChannelCardView;

.field final synthetic val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/MyChannelCardView;Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyChannelCardView$1;->this$0:Ltv/emby/embyatv/presentation/MyChannelCardView;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/MyChannelCardView$1;->val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/MyChannelCardView$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyChannelCardView$1;->this$0:Ltv/emby/embyatv/presentation/MyChannelCardView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/presentation/MyChannelCardView;->access$000(Ltv/emby/embyatv/presentation/MyChannelCardView;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 54
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyChannelCardView$1;->val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->setCurrentProgram(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method
