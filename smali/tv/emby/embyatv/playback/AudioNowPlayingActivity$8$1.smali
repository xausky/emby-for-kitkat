.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;)V
    .locals 0

    .line 219
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;->this$1:Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;->this$1:Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;

    iget-object p1, p1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->shuffleAudioQueue()V

    .line 223
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;->this$1:Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;

    iget-object p1, p1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8$1;->this$1:Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;

    iget-object p2, p2, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setBaseAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    return-void
.end method
