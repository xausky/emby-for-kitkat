.class Ltv/emby/embyatv/details/ListItemAdapter$8$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/UserItemDataDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$8;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$8;)V
    .locals 0

    .line 441
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$8$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$8;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 441
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$8$1;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 2

    .line 444
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$8$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$8;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$8;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V

    .line 445
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$8$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$8;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$8;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemChanged(I)V

    .line 446
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastFavoriteUpdate(J)V

    return-void
.end method
