.class Ltv/emby/embyatv/details/FullDetailsActivity$20;
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

    .line 1174
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "Series"

    .line 1177
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1179
    new-instance p1, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {p1}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 1180
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/NextUpQuery;->setSeriesId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/NextUpQuery;->setLimit(Ljava/lang/Integer;)V

    const/4 v1, 0x3

    .line 1183
    new-array v1, v1, [Lmediabrowser/model/querying/ItemFields;

    const/4 v2, 0x0

    sget-object v3, Lmediabrowser/model/querying/ItemFields;->Chapters:Lmediabrowser/model/querying/ItemFields;

    aput-object v3, v1, v2

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 1184
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$20$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$20;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetNextUpEpisodesAsync(Lmediabrowser/model/querying/NextUpQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1203
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1204
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$20;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getResumePreroll()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1800(Ltv/emby/embyatv/details/FullDetailsActivity;I)V

    :goto_0
    return-void
.end method
