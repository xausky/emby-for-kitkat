.class Ltv/emby/embyatv/playback/MediaManager$4;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 389
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$4;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$4;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 398
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$4;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$500(Ltv/emby/embyatv/playback/MediaManager;)Landroid/media/AudioManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/util/RemoteControlReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$4;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
