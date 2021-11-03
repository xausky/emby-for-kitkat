.class Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;
.super Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;)V
    .locals 0

    .line 167
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 170
    new-instance v0, Landroidx/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ShadowOverlayContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->needsDefaultShadow()Z

    move-result p1

    iget-object v1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$1;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/leanback/widget/ShadowOverlayContainer;->initialize(ZZZ)V

    return-object v0
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 178
    check-cast p1, Landroidx/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ShadowOverlayContainer;->wrap(Landroid/view/View;)V

    return-void
.end method
