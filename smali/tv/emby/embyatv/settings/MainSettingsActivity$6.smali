.class Ltv/emby/embyatv/settings/MainSettingsActivity$6;
.super Ljava/lang/Object;
.source "MainSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/settings/MainSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/MainSettingsActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/settings/MainSettingsActivity$6;->this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/settings/MainSettingsActivity$6;->this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/settings/MainSettingsActivity$6;->this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;

    iget-object v1, v1, Ltv/emby/embyatv/settings/MainSettingsActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/settings/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
