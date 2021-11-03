.class public Lmediabrowser/model/sync/SyncJobQuery;
.super Ljava/lang/Object;
.source "SyncJobQuery.java"


# instance fields
.field private ExcludeTargetIds:Ljava/lang/String;

.field private ItemId:Ljava/lang/String;

.field private Limit:Ljava/lang/Integer;

.field private StartIndex:Ljava/lang/Integer;

.field private Statuses:[Lmediabrowser/model/sync/SyncJobStatus;

.field private SyncNewContent:Ljava/lang/Boolean;

.field private TargetId:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    new-array v0, v0, [Lmediabrowser/model/sync/SyncJobStatus;

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncJobQuery;->setStatuses([Lmediabrowser/model/sync/SyncJobStatus;)V

    return-void
.end method


# virtual methods
.method public final getExcludeTargetIds()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->ExcludeTargetIds:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatuses()[Lmediabrowser/model/sync/SyncJobStatus;
    .locals 1

    .line 87
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->Statuses:[Lmediabrowser/model/sync/SyncJobStatus;

    return-object v0
.end method

.method public final getSyncNewContent()Ljava/lang/Boolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->SyncNewContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->TargetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setExcludeTargetIds(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->ExcludeTargetIds:Ljava/lang/String;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStatuses([Lmediabrowser/model/sync/SyncJobStatus;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->Statuses:[Lmediabrowser/model/sync/SyncJobStatus;

    return-void
.end method

.method public final setSyncNewContent(Ljava/lang/Boolean;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->SyncNewContent:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->TargetId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobQuery;->UserId:Ljava/lang/String;

    return-void
.end method
