.class Ltv/emby/embyatv/browsing/StdGridFragment$3;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->setupUI(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 246
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p1

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getTotalItems()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Ltv/emby/embyatv/presentation/IGridPresenter;->setPosition(I)V

    .line 247
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$200(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    return-void
.end method
