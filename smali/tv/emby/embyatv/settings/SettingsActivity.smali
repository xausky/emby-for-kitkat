.class public Ltv/emby/embyatv/settings/SettingsActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004a

    .line 13
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsActivity;->setContentView(I)V

    return-void
.end method
