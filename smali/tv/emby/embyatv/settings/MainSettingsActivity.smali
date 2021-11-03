.class public Ltv/emby/embyatv/settings/MainSettingsActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "MainSettingsActivity.java"


# instance fields
.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/settings/MainSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->openSettings(Ljava/lang/String;)V

    return-void
.end method

.method private openSettings(Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "category"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setBackground()V
    .locals 2

    const v0, 0x7f0a0296

    .line 84
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 23
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    .line 24
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->setContentView(I)V

    .line 25
    iput-object p0, p0, Ltv/emby/embyatv/settings/MainSettingsActivity;->mActivity:Landroid/app/Activity;

    const p1, 0x7f0a0299

    .line 28
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 29
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->VersionString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getRegistrationString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0298

    .line 31
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s (%s)"

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/system/SystemInfo;->getServerName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a02b8

    .line 34
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$1;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00e1

    .line 40
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$2;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a021c

    .line 46
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$3;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01c4

    .line 52
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 53
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->hasLiveTv()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$4;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a015e

    .line 63
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$5;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02c3

    .line 69
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/MainSettingsActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/MainSettingsActivity$6;-><init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Ltv/emby/embyatv/settings/MainSettingsActivity;->setBackground()V

    return-void
.end method
