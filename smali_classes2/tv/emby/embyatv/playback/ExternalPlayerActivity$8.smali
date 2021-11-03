.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$8;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$8;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 197
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->isVideoQueueModified()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->clearVideoQueue()V

    .line 198
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$8;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->finish()V

    return-void
.end method
