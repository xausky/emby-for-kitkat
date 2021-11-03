.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$1;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;)V
    .locals 0

    .line 1644
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 1647
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    return-void
.end method
