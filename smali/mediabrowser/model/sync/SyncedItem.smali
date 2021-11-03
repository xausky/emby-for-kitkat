.class public Lmediabrowser/model/sync/SyncedItem;
.super Ljava/lang/Object;
.source "SyncedItem.java"


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

.field private Item:Lmediabrowser/model/dto/BaseItemDto;

.field private OriginalFileName:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;

.field private SyncJobDateCreated:Ljava/util/Date;

.field private SyncJobId:Ljava/lang/String;

.field private SyncJobItemId:Ljava/lang/String;

.field private SyncJobName:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobDateCreated:Ljava/util/Date;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncedItem;->setAdditionalFiles(Ljava/util/ArrayList;)V

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

    .line 127
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->AdditionalFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 99
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->Item:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public final getOriginalFileName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->OriginalFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncJobDateCreated()Ljava/util/Date;
    .locals 1

    .line 57
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public final getSyncJobId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncJobItemId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncJobName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lmediabrowser/model/sync/SyncedItem;->UserId:Ljava/lang/String;

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

    .line 131
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->AdditionalFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setItem(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->Item:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public final setOriginalFileName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->OriginalFileName:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setSyncJobDateCreated(Ljava/util/Date;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobDateCreated:Ljava/util/Date;

    return-void
.end method

.method public final setSyncJobId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobId:Ljava/lang/String;

    return-void
.end method

.method public final setSyncJobItemId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobItemId:Ljava/lang/String;

    return-void
.end method

.method public final setSyncJobName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->SyncJobName:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmediabrowser/model/sync/SyncedItem;->UserId:Ljava/lang/String;

    return-void
.end method
