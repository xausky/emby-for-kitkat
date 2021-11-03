.class Ltv/emby/embyatv/ui/InteractiveProgressBar$3;
.super Ljava/lang/Object;
.source "InteractiveProgressBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/InteractiveProgressBar;->scrollToChapterNdx(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V
    .locals 0

    .line 260
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iput p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 263
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->val$pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;->this$0:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->access$1900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 266
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method
