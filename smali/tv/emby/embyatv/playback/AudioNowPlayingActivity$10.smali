.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;
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

    .line 240
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 243
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 244
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 245
    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {v0}, Lmediabrowser/model/dto/NameIdPair;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 249
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 250
    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {v0}, Lmediabrowser/model/dto/NameIdPair;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
