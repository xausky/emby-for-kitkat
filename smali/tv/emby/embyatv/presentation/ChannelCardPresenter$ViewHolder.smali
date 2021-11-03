.class Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "ChannelCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/ChannelCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCardView:Ltv/emby/embyatv/presentation/MyChannelCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    check-cast p1, Ltv/emby/embyatv/presentation/MyChannelCardView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyChannelCardView;

    return-void
.end method


# virtual methods
.method public setItem(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 1

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyChannelCardView;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/presentation/MyChannelCardView;->setItem(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method
