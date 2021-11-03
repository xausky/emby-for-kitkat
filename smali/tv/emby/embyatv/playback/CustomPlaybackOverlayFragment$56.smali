.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSubLoadingMsg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V
    .locals 0

    .line 2274
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2277
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->val$show:Z

    if-eqz v0, :cond_0

    .line 2278
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const v1, 0x7f100656

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2279
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2281
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2282
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
