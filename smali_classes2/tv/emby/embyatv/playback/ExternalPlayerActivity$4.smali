.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$4;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->handlePlayerError()V
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

    .line 128
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$4;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 131
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$4;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_video_use_external"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_live_tv_use_external"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
