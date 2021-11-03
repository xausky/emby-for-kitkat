.class public Lmediabrowser/model/sync/SyncQualityOption;
.super Ljava/lang/Object;
.source "SyncQualityOption.java"


# instance fields
.field private Description:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private IsDefault:Z

.field private IsOriginalQuality:Z

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncQualityOption;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/sync/SyncQualityOption;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefault()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncQualityOption;->IsDefault:Z

    return v0
.end method

.method public final getIsOriginalQuality()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncQualityOption;->IsOriginalQuality:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/sync/SyncQualityOption;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncQualityOption;->Description:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/sync/SyncQualityOption;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsDefault(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncQualityOption;->IsDefault:Z

    return-void
.end method

.method public final setIsOriginalQuality(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncQualityOption;->IsOriginalQuality:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/sync/SyncQualityOption;->Name:Ljava/lang/String;

    return-void
.end method
