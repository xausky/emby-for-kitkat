.class Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "InfoCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/InfoCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private mInfoCardView:Ltv/emby/embyatv/presentation/MyInfoCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    check-cast p1, Ltv/emby/embyatv/presentation/MyInfoCardView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;->mInfoCardView:Ltv/emby/embyatv/presentation/MyInfoCardView;

    return-void
.end method


# virtual methods
.method public setItem(Lmediabrowser/model/entities/MediaStream;)V
    .locals 1

    .line 35
    iget-object v0, p0, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;->mInfoCardView:Ltv/emby/embyatv/presentation/MyInfoCardView;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/presentation/MyInfoCardView;->setItem(Lmediabrowser/model/entities/MediaStream;)V

    return-void
.end method
