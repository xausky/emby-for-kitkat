.class public Ltv/emby/embyatv/startup/SelectServerActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "SelectServerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002b

    .line 14
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/SelectServerActivity;->setContentView(I)V

    return-void
.end method
