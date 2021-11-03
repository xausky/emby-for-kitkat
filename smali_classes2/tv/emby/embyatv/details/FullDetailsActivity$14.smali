.class Ltv/emby/embyatv/details/FullDetailsActivity$14;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->toggleFavorite()V
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
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$14;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1045
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$14;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 2

    .line 1048
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$14;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V

    .line 1049
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$14;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3000(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080171

    goto :goto_0

    :cond_0
    const p1, 0x7f0801b9

    :goto_0
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/TextUnderButton;->setImageResource(I)V

    .line 1050
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastFavoriteUpdate(J)V

    return-void
.end method
