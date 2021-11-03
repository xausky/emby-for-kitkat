.class public Ltv/emby/embyatv/startup/ConnectActivity;
.super Landroid/app/Activity;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/startup/ConnectActivity$PlaceholderFragment;
    }
.end annotation


# instance fields
.field pinResult:Lmediabrowser/model/connect/PinCreationResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110006

    .line 31
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity;->setTheme(I)V

    const p1, 0x7f0d0046

    .line 32
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    const v0, 0x7f0a0082

    .line 37
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/startup/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/ConnectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/startup/ConnectActivity$1;

    invoke-direct {v2, p0, v0, p1, p0}, Ltv/emby/embyatv/startup/ConnectActivity$1;-><init>(Ltv/emby/embyatv/startup/ConnectActivity;Landroid/widget/Button;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    invoke-interface {p1, v1, v2}, Lmediabrowser/apiinteraction/IConnectionManager;->CreatePin(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    const p1, 0x7f0a007f

    .line 87
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 88
    new-instance v0, Ltv/emby/embyatv/startup/ConnectActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/startup/ConnectActivity$2;-><init>(Ltv/emby/embyatv/startup/ConnectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0080

    .line 95
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 96
    new-instance v0, Ltv/emby/embyatv/startup/ConnectActivity$3;

    invoke-direct {v0, p0, p0}, Ltv/emby/embyatv/startup/ConnectActivity$3;-><init>(Ltv/emby/embyatv/startup/ConnectActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
