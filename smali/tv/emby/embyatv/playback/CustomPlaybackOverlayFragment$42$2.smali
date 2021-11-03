.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1815
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1816
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1856
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->toggleStats()V

    goto/16 :goto_0

    .line 1852
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v3, 0x7d0

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/PlaybackController;->switchLiveTvMode(Z)V

    goto/16 :goto_0

    .line 1848
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ltv/emby/embyatv/display/DisplayHelper;->setRefreshRate(I)V

    goto :goto_0

    .line 1832
    :pswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v2, 0x7f100550

    .line 1833
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v2, 0x7f100632

    .line 1834
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100617

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;)V

    .line 1835
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100526

    const/4 v2, 0x0

    .line 1843
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1844
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1828
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Lmediabrowser/model/session/RepeatMode;->forValue(I)Lmediabrowser/model/session/RepeatMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setRepeatMode(Lmediabrowser/model/session/RepeatMode;)V

    goto :goto_0

    .line 1824
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setZoom(I)V

    goto :goto_0

    .line 1819
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->setCurrentMaxBitrate(I)V

    .line 1820
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
