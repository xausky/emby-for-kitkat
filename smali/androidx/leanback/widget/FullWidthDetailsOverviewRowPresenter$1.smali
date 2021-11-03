.class Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewRowPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/BaseGridView$OnUnhandledKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

.field final synthetic val$vh:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;->this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iput-object p2, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;->val$vh:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKey(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 558
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;->val$vh:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;->val$vh:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;->val$vh:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
