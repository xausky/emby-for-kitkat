.class Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    .line 194
    iput-object p1, p0, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 197
    iget-object p2, p0, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v0, p0, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mSelectorView:Landroid/view/View;

    iget-object v1, p0, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroidx/leanback/widget/AbstractMediaItemPresenter;->updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p2, Landroidx/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
