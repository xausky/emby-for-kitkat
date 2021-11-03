.class Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;
.super Ljava/lang/Object;
.source "PlaybackControlsRowPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/PlaybackControlsRowPresenter;->initRow(Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/PlaybackControlsRowPresenter;

.field final synthetic val$vh:Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/PlaybackControlsRowPresenter;Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 0

    .line 360
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;->this$0:Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    iput-object p2, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;->val$vh:Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKey(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 363
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;->val$vh:Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;->val$vh:Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$3;->val$vh:Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

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
