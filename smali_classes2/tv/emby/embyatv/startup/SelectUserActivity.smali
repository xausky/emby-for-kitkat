.class public Ltv/emby/embyatv/startup/SelectUserActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "SelectUserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 15
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/SelectUserActivity;->setContentView(I)V

    return-void
.end method
