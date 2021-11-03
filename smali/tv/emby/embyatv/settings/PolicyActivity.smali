.class public Ltv/emby/embyatv/settings/PolicyActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "PolicyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    .line 14
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/PolicyActivity;->setContentView(I)V

    const p1, 0x7f0a022a

    .line 15
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/PolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v0, "https://emby.media/privacy.html"

    .line 16
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
