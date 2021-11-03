.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->saveAudioQueue(Landroid/content/Context;)V

    return-void
.end method
