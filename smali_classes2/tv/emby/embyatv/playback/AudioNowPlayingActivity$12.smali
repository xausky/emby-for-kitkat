.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;
.super Ltv/emby/embyatv/presentation/ItemSelectedListener;
.source "AudioNowPlayingActivity.java"


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

    .line 283
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/presentation/ItemSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 2

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V

    .line 288
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$702(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)I

    return-void
.end method
