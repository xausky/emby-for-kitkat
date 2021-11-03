.class Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "GridButtonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/GridButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private cardHeight:I

.field private cardWidth:I

.field private mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

.field private mDefaultCardImage:Landroid/graphics/drawable/Drawable;

.field private mItem:Ltv/emby/embyatv/ui/GridButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    check-cast p1, Ltv/emby/embyatv/presentation/MyImageCardView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    .line 46
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;
    .locals 0

    .line 35
    iget-object p0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->updateCardViewImage(I)V

    return-void
.end method

.method private updateCardViewImage(I)V
    .locals 9

    .line 65
    invoke-static {}, Ltv/emby/embyatv/presentation/GridButtonPresenter;->access$000()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 67
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    .line 68
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v5

    iget v6, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->cardWidth:I

    iget v7, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->cardHeight:I

    iget-object v8, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    move v4, p1

    invoke-static/range {v3 .. v8}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;ILandroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "**** Activity destroyed or finishing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "**** Context invalid"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCardView()Ltv/emby/embyatv/presentation/MyImageCardView;
    .locals 1

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    return-object v0
.end method

.method public getItem()Ltv/emby/embyatv/ui/GridButton;
    .locals 1

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/ui/GridButton;

    return-object v0
.end method

.method public setItem(Ltv/emby/embyatv/ui/GridButton;II)V
    .locals 0

    .line 50
    iput-object p1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/ui/GridButton;

    .line 51
    iput p2, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->cardWidth:I

    .line 52
    iput p3, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->cardHeight:I

    .line 53
    iget-object p1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    return-void
.end method
