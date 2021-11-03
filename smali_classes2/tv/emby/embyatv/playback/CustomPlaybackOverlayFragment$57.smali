.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setTimedText(Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$textObj:Lmediabrowser/model/mediainfo/SubtitleTrackEvent;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V
    .locals 0

    .line 2314
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->val$textObj:Lmediabrowser/model/mediainfo/SubtitleTrackEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2317
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->val$textObj:Lmediabrowser/model/mediainfo/SubtitleTrackEvent;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2318
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 2322
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->val$textObj:Lmediabrowser/model/mediainfo/SubtitleTrackEvent;

    invoke-virtual {v0}, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2329
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2330
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 2325
    :cond_2
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
