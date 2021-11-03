.class Ltv/emby/embyatv/details/ItemListActivity$2$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$2;->onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$2;)V
    .locals 0

    .line 200
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$2$1;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 1

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$2$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput-object p1, v0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    .line 204
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$2$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->buildOverview(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemChanged(I)V

    return-void
.end method
