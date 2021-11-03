.class Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;
.super Lmediabrowser/apiinteraction/Response;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lmediabrowser/model/apiclient/ServerInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;)V
    .locals 0

    .line 177
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    const-class v2, Ltv/emby/embyatv/startup/SelectServerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    .line 184
    invoke-virtual {v1, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Servers"

    .line 186
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 187
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1$3;->this$2:Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2$1;->this$1:Ltv/emby/embyatv/browsing/BaseTabActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity$2;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->finish()V

    return-void
.end method
