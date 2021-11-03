.class public Landroidx/leanback/app/BrandedSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "BrandedSupportFragment.java"


# static fields
.field private static final TITLE_SHOW:Ljava/lang/String; = "titleShow"


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

.field private mSearchAffordanceColorSet:Z

.field private mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private mShowingTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleHelper:Landroidx/leanback/widget/TitleHelper;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchAffordanceColor()I
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;
    .locals 2

    .line 276
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleViewAdapter;->getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment views not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitleHelper()Landroidx/leanback/widget/TitleHelper;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/app/BrandedSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    sget p2, Landroidx/leanback/R$id;->browse_title_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final isShowingTitle()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 68
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroidx/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget p3, Landroidx/leanback/R$layout;->lb_browse_title:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 313
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 316
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 321
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 322
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "titleShow"

    .line 145
    iget-boolean v1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 305
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    .line 307
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "titleShow"

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 154
    :cond_0
    iget-object p2, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 155
    new-instance p2, Landroidx/leanback/widget/TitleHelper;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Landroidx/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    .line 156
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    iget-boolean p2, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 203
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 251
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    .line 252
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColor(I)V
    .locals 1

    .line 292
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 264
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    .line 266
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 224
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    .line 99
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    .line 100
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 102
    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {p1}, Landroidx/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 105
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-boolean p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 110
    :cond_1
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 114
    new-instance p1, Landroidx/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroidx/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    :cond_3
    :goto_0
    return-void
.end method

.method public showTitle(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 193
    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    return-void
.end method

.method public showTitle(Z)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Landroidx/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 176
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Landroidx/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_1
    return-void
.end method
