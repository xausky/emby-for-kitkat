.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->scrollGuideToRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

.field final synthetic val$ndx:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;I)V
    .locals 0

    .line 616
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iput p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 619
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 620
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->val$ndx:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, v0, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 622
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$15;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->isPaging:Z

    return-void
.end method
