.class public Ltv/emby/embyatv/ui/TabText;
.super Ltv/emby/embyatv/ui/FocusableText;
.source "TabText.java"


# instance fields
.field private mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

.field private mFragment:Landroid/app/Fragment;

.field private saveAlpha:F

.field private saveColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/FocusableText;-><init>(Landroid/content/Context;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 43
    iput p1, p0, Ltv/emby/embyatv/ui/TabText;->saveAlpha:F

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Ltv/emby/embyatv/ui/TabText;->saveColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/ui/FocusableText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x3ecccccd    # 0.4f

    .line 43
    iput p2, p0, Ltv/emby/embyatv/ui/TabText;->saveAlpha:F

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Ltv/emby/embyatv/ui/TabText;->saveColor:I

    .line 27
    iput-object p3, p0, Ltv/emby/embyatv/ui/TabText;->mFragment:Landroid/app/Fragment;

    .line 28
    check-cast p1, Ltv/emby/embyatv/browsing/BaseTabActivity;

    iput-object p1, p0, Ltv/emby/embyatv/ui/TabText;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TabText;->setActive(Z)V

    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/ui/TabText;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Ltv/emby/embyatv/ui/FocusableText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->getAlpha()F

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/TabText;->saveAlpha:F

    .line 52
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/TabText;->saveColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TabText;->setAlpha(F)V

    .line 54
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TabText;->setTextColor(I)V

    .line 55
    iget-object p1, p0, Ltv/emby/embyatv/ui/TabText;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/TabText;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->FocusedTabChanged(Ltv/emby/embyatv/ui/TabText;)V

    goto :goto_0

    .line 57
    :cond_0
    iget p1, p0, Ltv/emby/embyatv/ui/TabText;->saveAlpha:F

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TabText;->setAlpha(F)V

    .line 58
    iget p1, p0, Ltv/emby/embyatv/ui/TabText;->saveColor:I

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/TabText;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/TabText;->setAlpha(F)V

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabHighlightColor()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/TabText;->setTextColor(I)V

    .line 36
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->getAlpha()F

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/TabText;->saveAlpha:F

    .line 37
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->getCurrentTextColor()I

    move-result v0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabHighlightColor()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v0

    :goto_2
    iput v0, p0, Ltv/emby/embyatv/ui/TabText;->saveColor:I

    .line 39
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/TabText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 40
    instance-of p1, v0, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;

    if-eqz p1, :cond_4

    check-cast v0, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;

    invoke-virtual {v0, p0}, Ltv/emby/embyatv/ui/FixedFocusLinearLayout;->setLastFocusedChild(Landroid/view/View;)V

    :cond_4
    return-void
.end method
