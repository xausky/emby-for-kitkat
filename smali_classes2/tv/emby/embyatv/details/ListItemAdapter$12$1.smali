.class Ltv/emby/embyatv/details/ListItemAdapter$12$1;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$12;)V
    .locals 0

    .line 542
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 544
    new-instance p1, Ltv/emby/embyatv/util/DelayedMessage;

    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object p2, p2, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x5dc

    invoke-direct {p1, p2, v0}, Ltv/emby/embyatv/util/DelayedMessage;-><init>(Landroid/content/Context;I)V

    .line 545
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$12$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$12;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$12;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$800(Ltv/emby/embyatv/details/ListItemAdapter;)Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$12$1$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$12$1;Ltv/emby/embyatv/util/DelayedMessage;)V

    invoke-virtual {p2, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
