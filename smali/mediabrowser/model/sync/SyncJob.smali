.class public Lmediabrowser/model/sync/SyncJob;
.super Ljava/lang/Object;
.source "SyncJob.java"


# instance fields
.field private Bitrate:Ljava/lang/Integer;

.field private Category:Lmediabrowser/model/sync/SyncCategory;

.field private DateCreated:Ljava/util/Date;

.field private DateLastModified:Ljava/util/Date;

.field private Id:Ljava/lang/String;

.field private ItemCount:I

.field private ItemLimit:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private ParentName:Ljava/lang/String;

.field private PrimaryImageItemId:Ljava/lang/String;

.field private PrimaryImageTag:Ljava/lang/String;

.field private Profile:Ljava/lang/String;

.field private Progress:Ljava/lang/Double;

.field private Quality:Ljava/lang/String;

.field private RequestedItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Status:Lmediabrowser/model/sync/SyncJobStatus;

.field private SyncNewContent:Z

.field private TargetId:Ljava/lang/String;

.field private TargetName:Ljava/lang/String;

.field private UnwatchedOnly:Z

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Bitrate:Ljava/lang/Integer;

    .line 94
    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Category:Lmediabrowser/model/sync/SyncCategory;

    .line 122
    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Progress:Ljava/lang/Double;

    .line 150
    invoke-static {}, Lmediabrowser/model/sync/SyncJobStatus;->values()[Lmediabrowser/model/sync/SyncJobStatus;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lmediabrowser/model/sync/SyncJob;->Status:Lmediabrowser/model/sync/SyncJobStatus;

    .line 206
    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->ItemLimit:Ljava/lang/Integer;

    .line 234
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->DateCreated:Ljava/util/Date;

    .line 248
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/sync/SyncJob;->DateLastModified:Ljava/util/Date;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncJob;->setRequestedItemIds(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCategory()Lmediabrowser/model/sync/SyncCategory;
    .locals 1

    .line 97
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Category:Lmediabrowser/model/sync/SyncCategory;

    return-object v0
.end method

.method public final getDateCreated()Ljava/util/Date;
    .locals 1

    .line 237
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->DateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public final getDateLastModified()Ljava/util/Date;
    .locals 1

    .line 251
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->DateLastModified:Ljava/util/Date;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 265
    iget v0, p0, Lmediabrowser/model/sync/SyncJob;->ItemCount:I

    return v0
.end method

.method public final getItemLimit()Ljava/lang/Integer;
    .locals 1

    .line 209
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->ItemLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentName()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->ParentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->PrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfile()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Profile:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()Ljava/lang/Double;
    .locals 1

    .line 125
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Progress:Ljava/lang/Double;

    return-object v0
.end method

.method public final getQuality()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Quality:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestedItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->RequestedItemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/sync/SyncJobStatus;
    .locals 1

    .line 153
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->Status:Lmediabrowser/model/sync/SyncJobStatus;

    return-object v0
.end method

.method public final getSyncNewContent()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncJob;->SyncNewContent:Z

    return v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->TargetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->TargetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnwatchedOnly()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lmediabrowser/model/sync/SyncJob;->UnwatchedOnly:Z

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lmediabrowser/model/sync/SyncJob;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Bitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setCategory(Lmediabrowser/model/sync/SyncCategory;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Category:Lmediabrowser/model/sync/SyncCategory;

    return-void
.end method

.method public final setDateCreated(Ljava/util/Date;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->DateCreated:Ljava/util/Date;

    return-void
.end method

.method public final setDateLastModified(Ljava/util/Date;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->DateLastModified:Ljava/util/Date;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setItemCount(I)V
    .locals 0

    .line 269
    iput p1, p0, Lmediabrowser/model/sync/SyncJob;->ItemCount:I

    return-void
.end method

.method public final setItemLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->ItemLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setParentName(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->ParentName:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->PrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setProfile(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Profile:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(Ljava/lang/Double;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Progress:Ljava/lang/Double;

    return-void
.end method

.method public final setQuality(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Quality:Ljava/lang/String;

    return-void
.end method

.method public final setRequestedItemIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->RequestedItemIds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/sync/SyncJobStatus;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->Status:Lmediabrowser/model/sync/SyncJobStatus;

    return-void
.end method

.method public final setSyncNewContent(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncJob;->SyncNewContent:Z

    return-void
.end method

.method public final setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->TargetId:Ljava/lang/String;

    return-void
.end method

.method public final setTargetName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->TargetName:Ljava/lang/String;

    return-void
.end method

.method public final setUnwatchedOnly(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lmediabrowser/model/sync/SyncJob;->UnwatchedOnly:Z

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lmediabrowser/model/sync/SyncJob;->UserId:Ljava/lang/String;

    return-void
.end method
