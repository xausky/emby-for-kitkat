.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 317
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_4

    .line 322
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$900(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 324
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$902(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Landroid/view/View;)Landroid/view/View;

    .line 325
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    .line 327
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueuePosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 328
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueSize()I

    move-result p2

    if-lt p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 329
    :cond_1
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$700(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0xf

    if-ge p2, v0, :cond_2

    .line 330
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 334
    :goto_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$702(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)I

    .line 335
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V

    goto :goto_1

    .line 338
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    :cond_4
    :goto_1
    return-void
.end method
