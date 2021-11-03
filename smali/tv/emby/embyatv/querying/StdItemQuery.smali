.class public Ltv/emby/embyatv/querying/StdItemQuery;
.super Lmediabrowser/model/querying/ItemQuery;
.source "StdItemQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>([Lmediabrowser/model/querying/ItemFields;)V

    return-void
.end method

.method public constructor <init>([Lmediabrowser/model/querying/ItemFields;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    if-nez p1, :cond_0

    const/16 p1, 0xa

    .line 13
    new-array p1, p1, [Lmediabrowser/model/querying/ItemFields;

    const/4 v0, 0x0

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->CanDelete:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->ItemCounts:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->DisplayPreferencesId:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->CriticRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->CommunityRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->OfficialRating:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->PremiereDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/16 v0, 0x8

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->EndDate:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    const/16 v0, 0x9

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->ProductionYear:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p1, v0

    .line 15
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/querying/StdItemQuery;->setUserId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/querying/StdItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    return-void
.end method
