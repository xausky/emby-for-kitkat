.class public Ltv/emby/embyatv/integration/Recommendations;
.super Ljava/lang/Object;
.source "Recommendations.java"


# instance fields
.field private movieRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private serverId:Ljava/lang/String;

.field private tvRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    .line 24
    iput-object p2, p0, Ltv/emby/embyatv/integration/Recommendations;->userId:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->serverId:Ljava/lang/String;

    return-void
.end method

.method private replaceOldest(Ltv/emby/embyatv/integration/RecommendationType;)Ljava/lang/Integer;
    .locals 2

    .line 85
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    .line 87
    :goto_0
    new-instance v0, Ltv/emby/embyatv/integration/Recommendations$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/integration/Recommendations$1;-><init>(Ltv/emby/embyatv/integration/Recommendations;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/integration/Recommendation;

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/integration/Recommendation;->getRecId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    invoke-virtual {v0}, Ltv/emby/embyatv/integration/Recommendation;->getRecId()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Ltv/emby/embyatv/integration/Recommendation;)Z
    .locals 2

    .line 58
    sget-object v0, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/Recommendation;->getType()Ltv/emby/embyatv/integration/RecommendationType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/RecommendationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Ltv/emby/embyatv/integration/Recommendation;
    .locals 1

    .line 45
    new-instance v0, Ltv/emby/embyatv/integration/Recommendation;

    invoke-direct {v0, p1, p2}, Ltv/emby/embyatv/integration/Recommendation;-><init>(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)V

    .line 46
    sget-object p2, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/RecommendationType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return-object p2

    .line 51
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    iget-object p2, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ltv/emby/embyatv/integration/Recommendation;

    :cond_0
    return-object p2

    .line 49
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    iget-object p2, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ltv/emby/embyatv/integration/Recommendation;

    :cond_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMovieRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getRecId(Ltv/emby/embyatv/integration/RecommendationType;I)Ljava/lang/Integer;
    .locals 2

    .line 72
    sget-object v0, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/RecommendationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit16 p1, p1, 0xc8

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Ltv/emby/embyatv/integration/Recommendations;->replaceOldest(Ltv/emby/embyatv/integration/RecommendationType;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Ltv/emby/embyatv/integration/Recommendations;->replaceOldest(Ltv/emby/embyatv/integration/RecommendationType;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getTvRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Z
    .locals 1

    .line 100
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    .line 102
    :goto_0
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/integration/Recommendations;->get(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)Ltv/emby/embyatv/integration/Recommendation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/Recommendation;->getRecId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setMovieRecommendations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->movieRecommendations:Ljava/util/List;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setTvRecommendations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/integration/Recommendation;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->tvRecommendations:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendations;->userId:Ljava/lang/String;

    return-void
.end method
