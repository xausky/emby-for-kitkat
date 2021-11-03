.class Ltv/emby/embyatv/details/FullDetailsActivity$46;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->rotateBackdrops()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1884
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$46;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1887
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$46;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$46;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->updateBackground(Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$46;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Ltv/emby/embyatv/details/FullDetailsActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
