.class Ltv/emby/embyatv/browsing/TabHomeFragment$5;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

.field final synthetic val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 0

    .line 233
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 4

    .line 236
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Home Screen Sections"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$200(Ltv/emby/embyatv/browsing/TabHomeFragment;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$5;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    invoke-static {v0, v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$300(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V

    return-void
.end method
