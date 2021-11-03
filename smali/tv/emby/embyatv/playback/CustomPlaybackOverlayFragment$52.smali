.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$current:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 2137
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2140
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V

    .line 2141
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V

    .line 2142
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 2145
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setMax(I)V

    .line 2146
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setMax(I)V

    .line 2147
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCurrentItemId(Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCurrentItemId(Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "Episode"

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2151
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v3, v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V

    .line 2153
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mLogoImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    .line 2154
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 2155
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 2156
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->val$current:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v3, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    .line 2157
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    iget-object v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v6, v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v6}, Ltv/emby/embyatv/playback/PlaybackController;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmediabrowser/model/dto/MediaSourceInfo;->GetDefaultAudioStream(Ljava/lang/Integer;)Lmediabrowser/model/entities/MediaStream;

    move-result-object v6

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    .line 2158
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    .line 2159
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getSelectedSubtitleLanguage()Ljava/lang/String;

    move-result-object v8

    .line 2156
    invoke-static/range {v1 .. v8}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZLmediabrowser/model/entities/MediaStream;Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2162
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2164
    sget-object v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$mediabrowser$model$session$PlayMethod:[I

    invoke-virtual {v0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/session/PlayMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 2173
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v2, "Direct"

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_4

    .line 2167
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getTranscodingInfo()Lmediabrowser/model/session/TranscodingInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2168
    invoke-virtual {v0}, Lmediabrowser/model/session/TranscodingInfo;->getIsVideoDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Remux"

    goto :goto_3

    :cond_4
    const-string v0, "Trans"

    .line 2169
    :goto_3
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v0}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2179
    :cond_5
    :goto_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez v0, :cond_6

    .line 2180
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2181
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->show()V

    goto :goto_6

    .line 2183
    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz v0, :cond_8

    .line 2184
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    :goto_5
    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    goto :goto_6

    :cond_7
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    goto :goto_5

    :cond_8
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
