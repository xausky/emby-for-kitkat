.class Ltv/emby/embyatv/details/PhotoPlayerActivity$3;
.super Ljava/lang/Object;
.source "PhotoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/PhotoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    const/16 v1, 0x708

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$300(Ltv/emby/embyatv/details/PhotoPlayerActivity;I)V

    .line 267
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    :goto_0
    return-void
.end method
