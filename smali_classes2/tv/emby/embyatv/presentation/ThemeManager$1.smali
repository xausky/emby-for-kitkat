.class final Ltv/emby/embyatv/presentation/ThemeManager$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/ThemeManager;->showWelcomeMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 418
    iput-object p1, p0, Ltv/emby/embyatv/presentation/ThemeManager$1;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 422
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/ThemeManager$1;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 425
    iget-object v1, p0, Ltv/emby/embyatv/presentation/ThemeManager$1;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v2, "Happy Halloween!"

    const-string v3, "Try some of our spooky suggestions"

    const/16 v4, 0x2710

    const v0, 0x7f0800d6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, 0x7f08015e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
