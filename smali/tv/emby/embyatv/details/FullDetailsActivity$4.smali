.class Ltv/emby/embyatv/details/FullDetailsActivity$4;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->startClock()V
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

    .line 331
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 334
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOriginalRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 335
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1500(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/model/InfoItem;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v3, 0x7f10049e

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->updateEndTime(Ltv/emby/embyatv/model/InfoItem;)V

    .line 336
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$4;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1600(Ltv/emby/embyatv/details/FullDetailsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
