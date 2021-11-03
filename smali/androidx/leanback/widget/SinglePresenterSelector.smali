.class public final Landroidx/leanback/widget/SinglePresenterSelector;
.super Landroidx/leanback/widget/PresenterSelector;
.source "SinglePresenterSelector.java"


# instance fields
.field private final mPresenter:Landroidx/leanback/widget/Presenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/Presenter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/leanback/widget/PresenterSelector;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/leanback/widget/SinglePresenterSelector;->mPresenter:Landroidx/leanback/widget/Presenter;

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 0

    .line 33
    iget-object p1, p0, Landroidx/leanback/widget/SinglePresenterSelector;->mPresenter:Landroidx/leanback/widget/Presenter;

    return-object p1
.end method

.method public getPresenters()[Landroidx/leanback/widget/Presenter;
    .locals 3

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Landroidx/leanback/widget/Presenter;

    iget-object v1, p0, Landroidx/leanback/widget/SinglePresenterSelector;->mPresenter:Landroidx/leanback/widget/Presenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
