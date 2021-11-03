.class Ltv/emby/embyatv/details/FullDetailsActivity$43;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->markPlayed()V
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

    .line 1810
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1810
    check-cast p1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$43;->onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 1

    .line 1813
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V

    .line 1814
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$4400(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object p1

    const v0, 0x7f08016e

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setImageResource(I)V

    .line 1816
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1817
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 1818
    invoke-static {}, Ltv/emby/embyatv/integration/RecommendationManager;->getInstance()Ltv/emby/embyatv/integration/RecommendationManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->recommend(Ljava/lang/String;)V

    .line 1821
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastPlayback(Ljava/util/Calendar;)V

    const-string p1, "Episode"

    .line 1822
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setLastTvPlayback(Ljava/util/Calendar;)V

    .line 1823
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$43;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1000(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return-void
.end method
