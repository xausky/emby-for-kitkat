.class public Ltv/emby/embyatv/presentation/MyTileCardView;
.super Landroid/widget/RelativeLayout;
.source "MyTileCardView.java"


# instance fields
.field mFocusRect:Landroid/widget/ImageView;

.field mIcon:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mUseFocusRect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00c4

    .line 24
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0307

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mTitle:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0163

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0128

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mFocusRect:Landroid/widget/ImageView;

    .line 31
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_show_focusrect"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mUseFocusRect:Z

    return-void
.end method


# virtual methods
.method public setIconResource(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 40
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mUseFocusRect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mFocusRect:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyTileCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
