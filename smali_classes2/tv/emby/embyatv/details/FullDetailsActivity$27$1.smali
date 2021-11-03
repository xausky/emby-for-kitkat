.class Ltv/emby/embyatv/details/FullDetailsActivity$27$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$27;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$27;)V
    .locals 0

    .line 1280
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1308
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving trailers for playback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1309
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    const v0, 0x7f100661

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1280
    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->onResponse([Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 5

    .line 1283
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 1285
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    .line 1286
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/entities/MediaUrl;

    .line 1288
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->getYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1291
    new-instance v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 1292
    invoke-virtual {v0, v3}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    const-string v3, "YtTrailer"

    .line 1293
    invoke-virtual {v0, v3}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmediabrowser/model/dto/BaseItemDto;->setPath(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "Remote Trailer"

    :goto_0
    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 1296
    aput-object v0, p1, v1

    .line 1303
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$27$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$27;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$27;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0, p1, v1, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->play([Lmediabrowser/model/dto/BaseItemDto;IZ)V

    return-void
.end method
