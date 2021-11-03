.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->toggleRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1960
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Z)V

    return-void
.end method
