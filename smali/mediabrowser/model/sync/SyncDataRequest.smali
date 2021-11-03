.class public Lmediabrowser/model/sync/SyncDataRequest;
.super Ljava/lang/Object;
.source "SyncDataRequest.java"


# instance fields
.field private LocalItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SyncJobItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TargetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncDataRequest;->setLocalItemIds(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getLocalItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lmediabrowser/model/sync/SyncDataRequest;->LocalItemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSyncJobItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lmediabrowser/model/sync/SyncDataRequest;->SyncJobItemIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/sync/SyncDataRequest;->TargetId:Ljava/lang/String;

    return-object v0
.end method

.method public final setLocalItemIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lmediabrowser/model/sync/SyncDataRequest;->LocalItemIds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSyncJobItemIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lmediabrowser/model/sync/SyncDataRequest;->SyncJobItemIds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/sync/SyncDataRequest;->TargetId:Ljava/lang/String;

    return-void
.end method
