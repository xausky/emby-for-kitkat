.class Ltv/emby/embyatv/settings/MainSettingsActivity$4;
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

    .line 54
    iput-object p1, p0, Ltv/emby/embyatv/settings/MainSettingsActivity$4;->this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Ltv/emby/embyatv/settings/MainSettingsActivity$4;->this$0:Ltv/emby/embyatv/settings/MainSettingsActivity;

    const-string v0, "livetv"

    invoke-static {p1, v0}, Ltv/emby/embyatv/settings/MainSettingsActivity;->access$000(Ltv/emby/embyatv/settings/MainSettingsActivity;Ljava/lang/String;)V

    return-void
.end method
