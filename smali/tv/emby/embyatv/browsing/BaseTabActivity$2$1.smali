.class Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2;)V
    .locals 0

    .line 137
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    add-int/lit8 p1, p1, -0x64

    .line 222
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getOtherUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/UserDto;

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    iget-object v2, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-static {p1, v0, v2, v3}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;)V

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 155
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$2;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;)V

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V

    return v1

    .line 142
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->clearCache()V

    .line 143
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$1;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;)V

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return v1

    .line 209
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const-class v2, Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 214
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const v2, 0x7f10064c

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 173
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    .line 174
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->clearCache()V

    .line 175
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isConnectLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;-><init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;)V

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getIsAutoLoginConfigured()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 196
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const-class v2, Ltv/emby/embyatv/startup/SelectUserActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->finish()V

    goto :goto_1

    .line 202
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->finish()V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
