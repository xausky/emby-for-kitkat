.class Ltv/emby/embyatv/playback/MediaManager$2;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->startThemeAudio(Ljava/lang/String;)V
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

    .line 254
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$2;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 257
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$2;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$200(Ltv/emby/embyatv/playback/MediaManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 258
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$2;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$200(Ltv/emby/embyatv/playback/MediaManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
