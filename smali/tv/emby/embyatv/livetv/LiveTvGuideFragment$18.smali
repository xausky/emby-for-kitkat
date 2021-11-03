.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->scrollToChannelNdx(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V
    .locals 0

    .line 977
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iput p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 980
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2902(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 981
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$18;->val$num:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Unable to find row to focus"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
