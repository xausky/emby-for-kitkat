.class public Ltv/emby/embyatv/search/SearchActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "SearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d0028

    .line 19
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/search/SearchActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0029

    .line 21
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/search/SearchActivity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Ltv/emby/embyatv/search/SearchActivity;->recreate()V

    const/4 v0, 0x1

    return v0
.end method
