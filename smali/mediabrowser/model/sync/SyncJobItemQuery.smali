.class public Lmediabrowser/model/sync/SyncJobItemQuery;
.super Ljava/lang/Object;
.source "SyncJobItemQuery.java"


# instance fields
.field private AddMetadata:Z

.field private ItemId:Ljava/lang/String;

.field private JobId:Ljava/lang/String;

.field private Limit:Ljava/lang/Integer;

.field private StartIndex:Ljava/lang/Integer;

.field private Statuses:[Lmediabrowser/model/sync/SyncJobItemStatus;

.field private TargetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Lmediabrowser/model/sync/SyncJobItemStatus;

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncJobItemQuery;->setStatuses([Lmediabrowser/model/sync/SyncJobItemStatus;)V

    return-void
.end method


# virtual methods
.method public final getAddMetadata()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->AddMetadata:Z

    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->JobId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatuses()[Lmediabrowser/model/sync/SyncJobItemStatus;
    .locals 1

    .line 83
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->Statuses:[Lmediabrowser/model/sync/SyncJobItemStatus;

    return-object v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->TargetId:Ljava/lang/String;

    return-object v0
.end method

.method public final setAddMetadata(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->AddMetadata:Z

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setJobId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->JobId:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStatuses([Lmediabrowser/model/sync/SyncJobItemStatus;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->Statuses:[Lmediabrowser/model/sync/SyncJobItemStatus;

    return-void
.end method

.method public final setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItemQuery;->TargetId:Ljava/lang/String;

    return-void
.end method
