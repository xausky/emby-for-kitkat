.class public Lmediabrowser/model/sync/SyncJobItem;
.super Ljava/lang/Object;
.source "SyncJobItem.java"


# instance fields
.field private AdditionalFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/sync/ItemFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private DateCreated:Ljava/util/Date;

.field private Id:Ljava/lang/String;

.field private IsMarkedForRemoval:Z

.field private ItemDateModifiedTicks:J

.field private ItemId:Ljava/lang/String;

.field private ItemName:Ljava/lang/String;

.field private JobId:Ljava/lang/String;

.field private JobItemIndex:I

.field private MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

.field private MediaSourceId:Ljava/lang/String;

.field private OutputPath:Ljava/lang/String;

.field private PrimaryImageItemId:Ljava/lang/String;

.field private PrimaryImageTag:Ljava/lang/String;

.field private Progress:Ljava/lang/Double;

.field private Status:Lmediabrowser/model/sync/SyncJobItemStatus;

.field private TargetId:Ljava/lang/String;

.field private TemporaryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Lmediabrowser/model/sync/SyncJobItemStatus;->values()[Lmediabrowser/model/sync/SyncJobItemStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->Status:Lmediabrowser/model/sync/SyncJobItemStatus;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->Progress:Ljava/lang/Double;

    .line 162
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->DateCreated:Ljava/util/Date;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncJobItem;->setAdditionalFiles(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAdditionalFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/sync/ItemFileInfo;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->AdditionalFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getDateCreated()Ljava/util/Date;
    .locals 1

    .line 165
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->DateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsMarkedForRemoval()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncJobItem;->IsMarkedForRemoval:Z

    return v0
.end method

.method public final getItemDateModifiedTicks()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemDateModifiedTicks:J

    return-wide v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->JobId:Ljava/lang/String;

    return-object v0
.end method

.method public final getJobItemIndex()I
    .locals 1

    .line 249
    iget v0, p0, Lmediabrowser/model/sync/SyncJobItem;->JobItemIndex:I

    return v0
.end method

.method public final getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;
    .locals 1

    .line 90
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputPath()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->OutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->PrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()Ljava/lang/Double;
    .locals 1

    .line 150
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->Progress:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/sync/SyncJobItemStatus;
    .locals 1

    .line 135
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->Status:Lmediabrowser/model/sync/SyncJobItemStatus;

    return-object v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->TargetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemporaryPath()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJobItem;->TemporaryPath:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdditionalFiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/sync/ItemFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->AdditionalFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setDateCreated(Ljava/util/Date;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->DateCreated:Ljava/util/Date;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsMarkedForRemoval(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncJobItem;->IsMarkedForRemoval:Z

    return-void
.end method

.method public final setItemDateModifiedTicks(J)V
    .locals 0

    .line 263
    iput-wide p1, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemDateModifiedTicks:J

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setItemName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->ItemName:Ljava/lang/String;

    return-void
.end method

.method public final setJobId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->JobId:Ljava/lang/String;

    return-void
.end method

.method public final setJobItemIndex(I)V
    .locals 0

    .line 253
    iput p1, p0, Lmediabrowser/model/sync/SyncJobItem;->JobItemIndex:I

    return-void
.end method

.method public final setMediaSource(Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setOutputPath(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->OutputPath:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->PrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(Ljava/lang/Double;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->Progress:Ljava/lang/Double;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/sync/SyncJobItemStatus;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->Status:Lmediabrowser/model/sync/SyncJobItemStatus;

    return-void
.end method

.method public final setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->TargetId:Ljava/lang/String;

    return-void
.end method

.method public final setTemporaryPath(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJobItem;->TemporaryPath:Ljava/lang/String;

    return-void
.end method
