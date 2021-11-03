.class Ltv/emby/embyatv/playback/YTPlayerActivity$1;
.super Ljava/lang/Object;
.source "YTPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/YTPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p1}, Lfr/bmartel/youtubetv/YoutubeTvView;->getPlayerState()Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object p1

    sget-object v0, Lfr/bmartel/youtubetv/model/VideoState;->PAUSED:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->access$000(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    .line 67
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$1;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p1}, Lfr/bmartel/youtubetv/YoutubeTvView;->playPause()V

    return-void
.end method
