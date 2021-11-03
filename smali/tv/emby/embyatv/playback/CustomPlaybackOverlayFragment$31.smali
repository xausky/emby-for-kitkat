.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addButtons(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1540
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    .line 1541
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return-void
.end method
