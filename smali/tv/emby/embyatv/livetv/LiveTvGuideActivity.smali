.class public Ltv/emby/embyatv/livetv/LiveTvGuideActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "LiveTvGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 17
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/LiveTvGuideActivity;->setContentView(I)V

    return-void
.end method
