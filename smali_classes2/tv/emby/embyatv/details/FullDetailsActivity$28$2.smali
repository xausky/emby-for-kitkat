.class Ltv/emby/embyatv/details/FullDetailsActivity$28$2;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$28;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1370
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$28;

    iget-object p2, p2, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$28$2$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$28$2;)V

    invoke-virtual {p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
