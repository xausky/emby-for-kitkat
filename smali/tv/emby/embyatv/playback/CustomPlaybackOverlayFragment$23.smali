.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideGuide()V
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

    .line 1333
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1336
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/base/IKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    return-void
.end method
