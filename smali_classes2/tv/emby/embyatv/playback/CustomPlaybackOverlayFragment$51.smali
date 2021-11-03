.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setPlayPauseActionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;I)V
    .locals 0

    .line 2125
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2128
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    iget v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->val$state:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    .line 2129
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    iget v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;->val$state:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    return-void
.end method
