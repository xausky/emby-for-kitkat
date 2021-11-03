.class public Ltv/emby/embyatv/integration/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"


# instance fields
.field private dateAdded:J

.field private itemId:Ljava/lang/String;

.field private recId:Ljava/lang/Integer;

.field private type:Ltv/emby/embyatv/integration/RecommendationType;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/integration/RecommendationType;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Ltv/emby/embyatv/integration/Recommendation;->itemId:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendation;->type:Ltv/emby/embyatv/integration/RecommendationType;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ltv/emby/embyatv/integration/Recommendation;->dateAdded:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 45
    instance-of v0, p1, Ltv/emby/embyatv/integration/Recommendation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    check-cast p1, Ltv/emby/embyatv/integration/Recommendation;

    .line 47
    invoke-virtual {p1}, Ltv/emby/embyatv/integration/Recommendation;->getType()Ltv/emby/embyatv/integration/RecommendationType;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/integration/Recommendation;->getType()Ltv/emby/embyatv/integration/RecommendationType;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/integration/Recommendation;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ltv/emby/embyatv/integration/Recommendation;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getDateAdded()J
    .locals 2

    .line 32
    iget-wide v0, p0, Ltv/emby/embyatv/integration/Recommendation;->dateAdded:J

    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendation;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecId()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendation;->recId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ltv/emby/embyatv/integration/RecommendationType;
    .locals 1

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/integration/Recommendation;->type:Ltv/emby/embyatv/integration/RecommendationType;

    return-object v0
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendation;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setRecId(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendation;->recId:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ltv/emby/embyatv/integration/RecommendationType;)V
    .locals 0

    .line 40
    iput-object p1, p0, Ltv/emby/embyatv/integration/Recommendation;->type:Ltv/emby/embyatv/integration/RecommendationType;

    return-void
.end method
