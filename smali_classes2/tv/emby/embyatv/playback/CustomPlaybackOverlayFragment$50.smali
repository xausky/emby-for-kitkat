.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$50;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V
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

    .line 2115
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$50;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2118
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$50;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    return-void
.end method
