.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "LiveTvGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->loadProgramData()V
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

    .line 1061
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 7

    .line 1064
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Programs response (fast load)"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1068
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** First focus channel id: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v5}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v0, v1, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannelsIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    .line 1070
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    mul-int v0, v0, v1

    .line 1071
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v4, "*** Scrolling to index %d current display index %d offset %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget v6, v6, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v1, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget v2, v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->setRequestedFocus(IZ)V

    .line 1073
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1074
    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget v2, v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->mFirstFocusNdx:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1075
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$21;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
