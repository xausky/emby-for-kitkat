.class public Ltv/emby/embyatv/startup/ExpiredActivity;
.super Landroid/app/Activity;
.source "ExpiredActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/ExpiredActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 34
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ExpiredActivity;->setContentView(I)V

    const p1, 0x7f0a010a

    .line 36
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/ExpiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 37
    new-instance v0, Ltv/emby/embyatv/startup/ExpiredActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/startup/ExpiredActivity$1;-><init>(Ltv/emby/embyatv/startup/ExpiredActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
