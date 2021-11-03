.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addButtons(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 1624
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1627
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1628
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "StreamInfo null trying to obtain audio tracks"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Unable to obtain audio track info"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1632
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1634
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/api/PlaybackManager;->getInPlaybackSelectableAudioStreams(Ltv/emby/embyatv/api/StreamInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1635
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackController;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v2

    .line 1637
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, p1, v4}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object p1

    .line 1638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/entities/MediaStream;

    const-string v5, "truehd"

    .line 1639
    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "DTS-HD MA"

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, ""

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, " (HD)"

    .line 1640
    :goto_2
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v7

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v1, v7, v8, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 1641
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne v6, v3, :cond_1

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1643
    :cond_4
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v4, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1644
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1650
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1659
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
