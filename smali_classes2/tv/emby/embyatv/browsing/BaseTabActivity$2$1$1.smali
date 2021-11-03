.class Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 147
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->finish()V

    return-void
.end method
