.class Ltv/emby/embyatv/browsing/BaseTabActivity$4;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 251
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 254
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->isMainPage:Z

    if-eqz p1, :cond_0

    .line 255
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const-class v1, Ltv/emby/embyatv/settings/MainSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    new-instance v0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    invoke-direct {v0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;-><init>()V

    invoke-static {p1, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->access$000(Ltv/emby/embyatv/browsing/BaseTabActivity;Landroid/app/Fragment;)V

    .line 260
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$4;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mCurrentTab:Ltv/emby/embyatv/ui/TabText;

    :goto_0
    return-void
.end method
