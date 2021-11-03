.class public Ltv/emby/embyatv/presentation/CustomListRowPresenter;
.super Landroidx/leanback/widget/ListRowPresenter;
.source "CustomListRowPresenter.java"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

.field private topPadding:Ljava/lang/Integer;

.field private viewHolder:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->enableChildRoundedCorners(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->enableChildRoundedCorners(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    .line 36
    iput-object p2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->topPadding:Ljava/lang/Integer;

    .line 37
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->enableChildRoundedCorners(Z)V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/ListRowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 45
    iget-object p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    .line 46
    check-cast p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    .line 48
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->topPadding:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->topPadding:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundColor:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->viewHolder:Landroid/view/View;

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    :cond_2
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_use_cards"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 59
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const/16 v0, 0x1c

    invoke-static {p2, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/HorizontalGridView;->setItemSpacing(I)V

    :cond_3
    return-void
.end method

.method public setPosition(I)V
    .locals 3

    .line 64
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting position to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->listRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method
