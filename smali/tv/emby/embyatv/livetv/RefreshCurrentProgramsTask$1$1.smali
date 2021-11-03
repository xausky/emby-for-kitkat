.class Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "RefreshCurrentProgramsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;->onResponse(Ljava/lang/Integer;)V
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
.field final synthetic this$1:Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;

.field final synthetic val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 0

    .line 32
    iput-object p1, p0, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;->this$1:Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;->val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;->val$channel:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->setCurrentProgram(Lmediabrowser/model/dto/BaseItemDto;)V

    :cond_0
    return-void
.end method
