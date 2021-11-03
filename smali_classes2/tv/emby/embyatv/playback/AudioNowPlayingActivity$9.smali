.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;
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

    .line 231
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 234
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ItemId"

    .line 235
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
