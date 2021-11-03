.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;
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

    .line 1762
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1765
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object p1

    .line 1766
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1767
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1769
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->isTranscoding()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    const/16 v3, 0xbb8

    const-string v4, "Enable live seeking"

    .line 1770
    invoke-interface {v0, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1773
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v3, 0x7f100572

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMaxBitrateStr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 1774
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v4, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Landroid/view/Menu;)V

    .line 1777
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->supportsDisplayModeSwitching()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v4, 0x7f100493

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayModeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 1779
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v4, v4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v4}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v4

    invoke-static {v4, v1}, Ltv/emby/embyatv/display/DisplayHelper;->buildCurrentDisplayOptions(Ltv/emby/embyatv/api/StreamInfo;Landroid/view/Menu;)V

    :cond_1
    const v1, 0x7f100618

    .line 1783
    invoke-interface {v0, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v4

    .line 1784
    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v6, 0x7f10052b

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6, v2, v2, v5}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v7, v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v7}, Ltv/emby/embyatv/playback/PlaybackController;->getZoomMode()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1785
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v7, 0x7f1004e1

    invoke-virtual {v5, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v7, 0x7f1005dd

    invoke-virtual {v5, v7}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {v4, v6, v6, v3, v5}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v7, v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v7}, Ltv/emby/embyatv/playback/PlaybackController;->getZoomMode()I

    move-result v7

    if-ne v7, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1786
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is70()Z

    move-result v5

    const/4 v7, 0x3

    if-eqz v5, :cond_6

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f10060e

    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v3, v6, v5}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v8, v8, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v8}, Ltv/emby/embyatv/playback/PlaybackController;->getZoomMode()I

    move-result v8

    if-ne v8, v3, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v5, 0x3

    goto :goto_4

    :cond_6
    const/4 v5, 0x2

    :goto_4
    add-int/lit8 v8, v5, 0x1

    .line 1787
    iget-object v9, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v9, v9, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v9, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v7, v5, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getZoomMode()I

    move-result v5

    if-ne v5, v7, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1789
    invoke-interface {v4, v6, v3, v2}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 1792
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v4, 0x7f100587

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/RepeatMode;->RepeatAll:Lmediabrowser/model/session/RepeatMode;

    const v9, 0x7f100533

    const v10, 0x7f10052e

    const v11, 0x7f100444

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v5, v11}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/session/RepeatMode;->RepeatOne:Lmediabrowser/model/session/RepeatMode;

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v5, v9}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v5, v10}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 1793
    sget-object v4, Lmediabrowser/model/session/RepeatMode;->RepeatNone:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v4}, Lmediabrowser/model/session/RepeatMode;->getValue()I

    move-result v4

    add-int/lit8 v5, v8, 0x1

    iget-object v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v6, v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v6, v10}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7, v4, v8, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v6, v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v6}, Ltv/emby/embyatv/playback/PlaybackController;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    move-result-object v6

    sget-object v8, Lmediabrowser/model/session/RepeatMode;->RepeatNone:Lmediabrowser/model/session/RepeatMode;

    if-ne v6, v8, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1794
    sget-object v4, Lmediabrowser/model/session/RepeatMode;->RepeatOne:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v4}, Lmediabrowser/model/session/RepeatMode;->getValue()I

    move-result v4

    add-int/lit8 v6, v5, 0x1

    iget-object v8, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v8, v8, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v8, v9}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v4, v5, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v5, v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    move-result-object v5

    sget-object v8, Lmediabrowser/model/session/RepeatMode;->RepeatOne:Lmediabrowser/model/session/RepeatMode;

    if-ne v5, v8, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1795
    sget-object v4, Lmediabrowser/model/session/RepeatMode;->RepeatAll:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v4}, Lmediabrowser/model/session/RepeatMode;->getValue()I

    move-result v4

    add-int/lit8 v5, v6, 0x1

    iget-object v8, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v8, v8, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v8, v11}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v4, v6, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v6, v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v6}, Ltv/emby/embyatv/playback/PlaybackController;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    move-result-object v6

    sget-object v8, Lmediabrowser/model/session/RepeatMode;->RepeatAll:Lmediabrowser/model/session/RepeatMode;

    if-ne v6, v8, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1797
    invoke-interface {v1, v7, v3, v2}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    const/4 v1, 0x4

    add-int/lit8 v4, v5, 0x1

    const v6, 0x7f10061c

    .line 1800
    invoke-interface {v0, v1, v2, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1803
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v5, 0x7f1005d2

    invoke-virtual {v1, v5}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-interface {v0, v5, v2, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v4, v4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1804
    invoke-interface {v0, v5, v3, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1806
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1812
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1863
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1864
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
