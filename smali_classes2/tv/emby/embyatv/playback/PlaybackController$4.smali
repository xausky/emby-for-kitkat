.class Ltv/emby/embyatv/playback/PlaybackController$4;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->processPlayRequest(JIIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 480
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$4;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 483
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$4;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/base/BaseActivity;->finish()V

    return-void
.end method
