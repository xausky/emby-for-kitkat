.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 1543
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1547
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 1548
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v0
.end method
