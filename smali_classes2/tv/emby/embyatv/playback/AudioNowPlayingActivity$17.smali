.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;
.super Lmediabrowser/apiinteraction/Response;
.source "AudioNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->toggleFavorite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/UserItemDataDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 451
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 451
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 2

    .line 454
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V

    .line 455
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080171

    goto :goto_0

    :cond_0
    const p1, 0x7f0801b9

    :goto_0
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 456
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastFavoriteUpdate(J)V

    return-void
.end method
