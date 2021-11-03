.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;
.super Lmediabrowser/apiinteraction/Response;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addButtons(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 1588
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 9

    .line 1591
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Ltv/emby/embyatv/presentation/CardPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3, v1, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZIIZ)V

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 1593
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 1594
    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1595
    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/dto/BaseItemDto;->setChannelNumber(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/dto/BaseItemDto;->setChannelName(Ljava/lang/String;)V

    .line 1597
    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLandroidx/leanback/widget/ArrayObjectAdapter;)V

    invoke-virtual {p1, v7}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    move v1, v8

    goto :goto_0

    .line 1600
    :cond_0
    new-instance v2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v1, v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/livetv/ChannelInfoDto;)V

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 1603
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 1604
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    new-instance v1, Landroidx/leanback/widget/ListRow;

    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v4, 0x7f10044a

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    iput-object v1, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    .line 1605
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1588
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
