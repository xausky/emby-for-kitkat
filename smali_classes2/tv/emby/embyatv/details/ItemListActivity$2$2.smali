.class Ltv/emby/embyatv/details/ItemListActivity$2$2;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$2;->onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$2;)V
    .locals 0

    .line 210
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2$2;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$2$2;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$2$2;->this$1:Ltv/emby/embyatv/details/ItemListActivity$2;

    iget-object v1, v1, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v1, v1, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$800(Ltv/emby/embyatv/details/ItemListActivity;Ljava/lang/String;)V

    return-void
.end method
