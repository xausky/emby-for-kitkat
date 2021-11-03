.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showProgramOptions()V
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

    .line 1011
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 1014
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$20;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->playRecording(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
