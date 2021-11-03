.class public Ltv/emby/embyatv/integration/RecommendationManager;
.super Ljava/lang/Object;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;
    }
.end annotation


# static fields
.field private static instance:Ltv/emby/embyatv/integration/RecommendationManager;


# instance fields
.field private final DEFAULT_SUGGESTIONS:Ljava/lang/String;

.field private final LIVE_TV:Ljava/lang/String;

.field private MAX_MOVIE_RECS:Ljava/lang/Integer;

.field private final MAX_TV_RECS:Ljava/lang/Integer;

.field private final NEXT_UP_TV:Ljava/lang/String;

.field private final REC_FILE_NAME:Ljava/lang/String;

.field private channelsLoaded:Z

.field private isEnabled:Z

.field private mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

.field private mPublishedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/OreoChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendations:Ltv/emby/embyatv/integration/Recommendations;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tv.mediabrowser.recommentations.json"

    .line 34
    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->REC_FILE_NAME:Ljava/lang/String;

    .line 35
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->MAX_TV_RECS:Ljava/lang/Integer;

    .line 36
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->MAX_MOVIE_RECS:Ljava/lang/Integer;

    const-string v0, "DEFAULT"

    .line 37
    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->DEFAULT_SUGGESTIONS:Ljava/lang/String;

    const-string v0, "NEXTUP"

    .line 38
    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->NEXT_UP_TV:Ljava/lang/String;

    const-string v0, "LIVE_TV"

    .line 39
    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->LIVE_TV:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    .line 52
    invoke-direct {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->loadRecs()Ltv/emby/embyatv/integration/Recommendations;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mRecommendations:Ltv/emby/embyatv/integration/Recommendations;

    .line 53
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->validate()Z

    goto :goto_2

    .line 56
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Recommendations not enabled on this device"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method static synthetic access$002(Ltv/emby/embyatv/integration/RecommendationManager;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->channelsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/OreoChannel;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    return-object p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/integration/RecommendationManager;Ltv/emby/embyatv/integration/OreoChannel;)Ltv/emby/embyatv/integration/OreoChannel;
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    return-object p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->MAX_MOVIE_RECS:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->MAX_MOVIE_RECS:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$500(Ltv/emby/embyatv/integration/RecommendationManager;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->MAX_TV_RECS:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/integration/RecommendationManager;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Ltv/emby/embyatv/integration/RecommendationManager;->addRecommendation(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/integration/RecommendationManager;)Ltv/emby/embyatv/integration/Recommendations;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mRecommendations:Ltv/emby/embyatv/integration/Recommendations;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/integration/RecommendationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->saveRecs()V

    return-void
.end method

.method private addRecommendation(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/integration/RecommendationType;I)Z
    .locals 3

    .line 357
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 359
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NEXTUP"

    .line 360
    invoke-direct {p0, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v0

    .line 361
    sget-object v2, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/OreoChannel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    .line 362
    :goto_0
    sget-object v2, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/integration/OreoChannel;->containsProgram(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 365
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mRecommendations:Ltv/emby/embyatv/integration/Recommendations;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ltv/emby/embyatv/integration/Recommendations;->get(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Ltv/emby/embyatv/integration/Recommendation;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    .line 369
    :cond_3
    new-instance v0, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;-><init>(Ltv/emby/embyatv/integration/RecommendationManager;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/integration/RecommendationManager$CreateRecommendationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p1

    :cond_4
    return v1
.end method

.method private clearAll()V
    .locals 3

    .line 143
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/OreoChannel;->clearPrograms()V

    :cond_0
    const-string v0, "NEXTUP"

    .line 145
    invoke-direct {p0, v0}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Ltv/emby/embyatv/integration/OreoChannel;->clearPrograms()V

    .line 147
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->clearWatchNext()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 155
    :cond_3
    :goto_0
    new-instance v0, Ltv/emby/embyatv/integration/Recommendations;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/integration/Recommendations;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mRecommendations:Ltv/emby/embyatv/integration/Recommendations;

    .line 156
    invoke-direct {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->saveRecs()V

    return-void
.end method

.method private createAll()V
    .locals 14

    .line 160
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_4

    .line 161
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 162
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 163
    iget-boolean v1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->channelsLoaded:Z

    if-nez v1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    const v4, 0x7f1005e3

    const v5, 0x7f080097

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Ltv/emby/embyatv/integration/OreoChannel;

    const-string v6, "DEFAULT"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v8

    invoke-virtual {v8}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Recommendations"

    invoke-static {v6, v4, v7, v5, v3}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide v6

    const-string v4, "DEFAULT"

    invoke-direct {v1, v6, v7, v4, v3}, Ltv/emby/embyatv/integration/OreoChannel;-><init>(JLjava/lang/String;Z)V

    iput-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    .line 167
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mDefaultChannel:Ltv/emby/embyatv/integration/OreoChannel;

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v8

    invoke-virtual {v8}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Recommendations"

    invoke-static {v6, v7, v1, v4}, Ltv/emby/embyatv/integration/OreoChannelHelper;->updateChannel(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "NEXTUP"

    .line 172
    invoke-direct {p0, v1}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 175
    new-instance v1, Ltv/emby/embyatv/integration/OreoChannel;

    const-string v4, "NEXTUP"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    const v7, 0x7f100525

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7, v5}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v6

    const-string v4, "NEXTUP"

    invoke-direct {v1, v6, v7, v4, v2}, Ltv/emby/embyatv/integration/OreoChannel;-><init>(JLjava/lang/String;Z)V

    .line 176
    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "LIVE_TV"

    .line 178
    invoke-direct {p0, v1}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v1

    .line 179
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->hasLiveTv()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 182
    new-instance v1, Ltv/emby/embyatv/integration/OreoChannel;

    const-string v4, "LIVE_TV"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    const v7, 0x7f100502

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7, v5}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    const-string v6, "LIVE_TV"

    invoke-direct {v1, v4, v5, v6, v2}, Ltv/emby/embyatv/integration/OreoChannel;-><init>(JLjava/lang/String;Z)V

    .line 183
    iget-object v4, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x1770

    .line 185
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v6, 0x7f100531

    invoke-virtual {v4, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.resource://tv.emby.embyatv/drawable/onnowhr"

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v8

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/integration/OreoChannelHelper;->publishLink(ILjava/lang/String;Ljava/lang/String;JLjava/lang/Integer;)J

    move-result-wide v5

    const/16 v7, 0x1770

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Ltv/emby/embyatv/integration/OreoChannel;->addExistingProgram(JLjava/lang/String;)V

    const/16 v8, 0x3e8

    .line 186
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v6, 0x7f100503

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.resource://tv.emby.embyatv/drawable/guidehr"

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Ltv/emby/embyatv/integration/OreoChannelHelper;->publishLink(ILjava/lang/String;Ljava/lang/String;JLjava/lang/Integer;)J

    move-result-wide v5

    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Ltv/emby/embyatv/integration/OreoChannel;->addExistingProgram(JLjava/lang/String;)V

    const/16 v8, 0x7d0

    .line 187
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v6, 0x7f10057c

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.resource://tv.emby.embyatv/drawable/recgrouphr"

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/OreoChannel;->getId()J

    move-result-wide v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v8 .. v13}, Ltv/emby/embyatv/integration/OreoChannelHelper;->publishLink(ILjava/lang/String;Ljava/lang/String;JLjava/lang/Integer;)J

    move-result-wide v4

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Ltv/emby/embyatv/integration/OreoChannel;->addExistingProgram(JLjava/lang/String;)V

    .line 192
    :cond_3
    new-instance v1, Lmediabrowser/model/querying/NextUpQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/NextUpQuery;-><init>()V

    .line 193
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/NextUpQuery;->setUserId(Ljava/lang/String;)V

    const/16 v4, 0x19

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/NextUpQuery;->setLimit(Ljava/lang/Integer;)V

    .line 195
    new-array v4, v3, [Lmediabrowser/model/querying/ItemFields;

    sget-object v5, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lmediabrowser/model/querying/NextUpQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    const-string v4, "NEXTUP"

    .line 196
    invoke-direct {p0, v4}, Ltv/emby/embyatv/integration/RecommendationManager;->findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;

    move-result-object v4

    .line 197
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/integration/RecommendationManager$2;

    invoke-direct {v6, p0, v4, v0}, Ltv/emby/embyatv/integration/RecommendationManager$2;-><init>(Ltv/emby/embyatv/integration/RecommendationManager;Ltv/emby/embyatv/integration/OreoChannel;Ljava/util/Random;)V

    invoke-virtual {v5, v1, v6}, Lmediabrowser/apiinteraction/ApiClient;->GetNextUpEpisodesAsync(Lmediabrowser/model/querying/NextUpQuery;Lmediabrowser/apiinteraction/Response;)V

    .line 218
    new-instance v1, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v1}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v4, "Video"

    .line 219
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setMediaTypes([Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    const/16 v4, 0xa

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 222
    new-array v3, v3, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v4, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/querying/StdItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    const-string v2, "DatePlayed"

    .line 223
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 224
    sget-object v2, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 225
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/integration/RecommendationManager$3;

    invoke-direct {v3, p0, v0}, Ltv/emby/embyatv/integration/RecommendationManager$3;-><init>(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/util/Random;)V

    invoke-virtual {v2, v1, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    :cond_4
    return-void
.end method

.method private findChannel(Ljava/lang/String;)Ltv/emby/embyatv/integration/OreoChannel;
    .locals 3

    .line 134
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mPublishedChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/integration/OreoChannel;

    .line 136
    invoke-virtual {v1}, Ltv/emby/embyatv/integration/OreoChannel;->getInternalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Ltv/emby/embyatv/integration/RecommendationManager;
    .locals 1

    .line 61
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-direct {v0}, Ltv/emby/embyatv/integration/RecommendationManager;-><init>()V

    sput-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    .line 62
    :cond_0
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .line 66
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Ltv/emby/embyatv/integration/RecommendationManager;->getInstance()Ltv/emby/embyatv/integration/RecommendationManager;

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/emby/embyatv/integration/RecommendationManager;->channelsLoaded:Z

    .line 70
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationManager;->instance:Ltv/emby/embyatv/integration/RecommendationManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/RecommendationManager;->validate()Z

    :goto_0
    return-void
.end method

.method private loadRecs()Ltv/emby/embyatv/integration/Recommendations;
    .locals 3

    .line 75
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "tv.mediabrowser.recommentations.json"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->ReadStringFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 80
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    const-class v2, Ltv/emby/embyatv/integration/Recommendations;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/integration/Recommendations;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    new-instance v0, Ltv/emby/embyatv/integration/Recommendations;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/integration/Recommendations;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ltv/emby/embyatv/integration/Recommendations;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/integration/Recommendations;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private saveRecs()V
    .locals 4

    .line 121
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const-string v2, "tv.mediabrowser.recommentations.json"

    invoke-virtual {v1, v2, v0}, Ltv/emby/embyatv/TvApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/integration/RecommendationManager;->mRecommendations:Ltv/emby/embyatv/integration/Recommendations;

    invoke-virtual {v2, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 125
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 127
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Error saving recommendations"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public recommend(Ljava/lang/String;)V
    .locals 3

    .line 261
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 263
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Attempt to recommend null Item"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/integration/RecommendationManager$4;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/integration/RecommendationManager$4;-><init>(Ltv/emby/embyatv/integration/RecommendationManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method

.method public validate()Z
    .locals 4

    .line 92
    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/integration/RecommendationManager;->channelsLoaded:Z

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ltv/emby/embyatv/integration/LoadPublishedChannels;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/integration/RecommendationManager$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/integration/RecommendationManager$1;-><init>(Ltv/emby/embyatv/integration/RecommendationManager;)V

    invoke-direct {v0, v2, v3}, Ltv/emby/embyatv/integration/LoadPublishedChannels;-><init>(Landroid/content/Context;Ltv/emby/embyatv/integration/LoadPublishedChannels$Listener;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 108
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/integration/LoadPublishedChannels;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->clearAll()V

    .line 112
    invoke-direct {p0}, Ltv/emby/embyatv/integration/RecommendationManager;->createAll()V

    .line 113
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recommendations re-created for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
