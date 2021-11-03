.class Ltv/emby/embyatv/details/FullDetailsActivity$27;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V
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

    .line 1277
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1280
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$27;)V

    invoke-virtual {p1, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLocalTrailersAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
