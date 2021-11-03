.class Landroidx/leanback/widget/TitleView$1;
.super Landroidx/leanback/widget/TitleViewAdapter;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/TitleView;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/TitleView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-direct {p0}, Landroidx/leanback/widget/TitleViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleView;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleView;->getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleView;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->enableAnimation(Z)V

    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/leanback/widget/TitleView$1;->this$0:Landroidx/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleView;->updateComponentsVisibility(I)V

    return-void
.end method
