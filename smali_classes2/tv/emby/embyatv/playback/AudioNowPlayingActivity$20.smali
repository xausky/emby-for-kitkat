.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$20;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->loadItem()V
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

    .line 533
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$20;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 536
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$20;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateSSInfo()V

    return-void
.end method
