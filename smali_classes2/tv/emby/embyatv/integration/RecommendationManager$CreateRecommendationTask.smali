.class public Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;
.super Landroid/os/AsyncTask;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/integration/RecommendationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateRecommendationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/integration/RecommendationManager;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/integration/RecommendationManager;)V
    .locals 0

    .line 377
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 10

    .line 380
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "No ApiClient attempting to create recommendations.  Aborting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 384
    :cond_0
    :try_start_0
    aget-object v0, p1, v2

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    .line 385
    aget-object v3, p1, v1

    check-cast v3, Ltv/emby/embyatv/integration/RecommendationType;

    const/4 v4, 0x2

    .line 386
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    .line 387
    sget-object v4, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    .line 388
    :goto_0
    new-instance v9, Ltv/emby/embyatv/integration/Recommendation;

    invoke-direct {v9, v3, v4}, Ltv/emby/embyatv/integration/Recommendation;-><init>(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v4}, Ltv/emby/embyatv/integration/RecommendationManager;->access$700(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/Recommendations;

    move-result-object v4

    sget-object v5, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v5}, Ltv/emby/embyatv/integration/RecommendationManager;->access$400(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v5}, Ltv/emby/embyatv/integration/RecommendationManager;->access$500(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ltv/emby/embyatv/integration/Recommendations;->getRecId(Ltv/emby/embyatv/integration/RecommendationType;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ltv/emby/embyatv/integration/Recommendation;->setRecId(Ljava/lang/Integer;)V

    .line 390
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    sget-object v2, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne v3, v2, :cond_4

    .line 392
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    const-string v3, "NEXTUP"

    invoke-static {v2, v3}, Ltv/emby/embyatv/integration/RecommendationManager;->access$300(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 393
    invoke-virtual {v2}, Ltv/emby/embyatv/integration/OreoChannel;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 p1, 0x63

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ltv/emby/embyatv/integration/OreoChannel;->addNewProgram(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 395
    :cond_3
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 396
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ltv/emby/embyatv/integration/OreoChannel;->addNewProgram(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 398
    :cond_4
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 399
    iget-object v2, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {v2}, Ltv/emby/embyatv/integration/RecommendationManager;->access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ltv/emby/embyatv/integration/OreoChannel;->addNewProgram(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 402
    :cond_5
    new-instance p1, Ltv/emby/embyatv/integration/RecommendationBuilder;

    invoke-direct {p1}, Ltv/emby/embyatv/integration/RecommendationBuilder;-><init>()V

    .line 403
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {p1, v3}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setContext(Landroid/content/Context;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    const v3, 0x7f080138

    .line 404
    invoke-virtual {p1, v3}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setSmallIcon(I)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 407
    invoke-virtual {v9}, Ltv/emby/embyatv/integration/Recommendation;->getRecId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setId(I)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 408
    invoke-virtual {p1, v2}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setPriority(I)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 409
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setTitle(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 410
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setDescription(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 411
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setBitmap(Landroid/graphics/Bitmap;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 412
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setBackground(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 413
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->buildPendingIntent(Lmediabrowser/model/dto/BaseItemDto;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/integration/RecommendationBuilder;->setIntent(Landroid/app/PendingIntent;)Ltv/emby/embyatv/integration/RecommendationBuilder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Ltv/emby/embyatv/integration/RecommendationBuilder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 417
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_6

    .line 418
    invoke-virtual {v9}, Ltv/emby/embyatv/integration/Recommendation;->getRecId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 421
    :cond_6
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {p1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$700(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/Recommendations;

    move-result-object p1

    invoke-virtual {p1, v9}, Ltv/emby/embyatv/integration/Recommendations;->add(Ltv/emby/embyatv/integration/Recommendation;)Z

    .line 422
    iget-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->this$0:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-static {p1}, Ltv/emby/embyatv/integration/RecommendationManager;->access$800(Ltv/emby/embyatv/integration/RecommendationManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 431
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
