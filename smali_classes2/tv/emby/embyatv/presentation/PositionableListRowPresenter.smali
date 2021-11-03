.class public Ltv/emby/embyatv/presentation/PositionableListRowPresenter;
.super Ltv/emby/embyatv/presentation/CustomListRowPresenter;
.source "PositionableListRowPresenter.java"

# interfaces
.implements Ltv/emby/embyatv/presentation/IPositionablePresenter;


# instance fields
.field private viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 26
    check-cast p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    return-void
.end method

.method public setPosition(I)V
    .locals 3

    .line 30
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

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->viewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method
