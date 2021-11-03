.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;
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

    .line 1670
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1673
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1674
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "StreamInfo null trying to obtain subtitles"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1675
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Unable to obtain subtitle info"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1678
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1679
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreams()Ljava/util/List;

    move-result-object v0

    .line 1680
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, p1, v3}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object p1

    .line 1681
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v4, v4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v5, 0x7f10052a

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 1682
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v3, v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreamIndex()I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_1

    .line 1683
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1684
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 1685
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v6

    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v7

    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDisplayTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v1, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 1686
    invoke-virtual {v2}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getIndex()I

    move-result v2

    if-ne v3, v2, :cond_2

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1688
    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v4, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1689
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1695
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1704
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
