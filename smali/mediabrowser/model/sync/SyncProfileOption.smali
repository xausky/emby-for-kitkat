.class public Lmediabrowser/model/sync/SyncProfileOption;
.super Ljava/lang/Object;
.source "SyncProfileOption.java"


# instance fields
.field private Description:Ljava/lang/String;

.field private EnableQualityOptions:Z

.field private Id:Ljava/lang/String;

.field private IsDefault:Z

.field private Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncProfileOption;->setEnableQualityOptions(Z)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncProfileOption;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableQualityOptions()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncProfileOption;->EnableQualityOptions:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/sync/SyncProfileOption;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefault()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncProfileOption;->IsDefault:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/sync/SyncProfileOption;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncProfileOption;->Description:Ljava/lang/String;

    return-void
.end method

.method public final setEnableQualityOptions(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncProfileOption;->EnableQualityOptions:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/sync/SyncProfileOption;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsDefault(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncProfileOption;->IsDefault:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/sync/SyncProfileOption;->Name:Ljava/lang/String;

    return-void
.end method
