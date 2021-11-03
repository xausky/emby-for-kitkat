.class public Lmediabrowser/model/sync/SyncDataResponse;
.super Ljava/lang/Object;
.source "SyncDataResponse.java"


# instance fields
.field private ItemIdsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ItemUserAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncDataResponse;->setItemIdsToRemove(Ljava/util/ArrayList;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/sync/SyncDataResponse;->setItemUserAccess(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final getItemIdsToRemove()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lmediabrowser/model/sync/SyncDataResponse;->ItemIdsToRemove:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItemUserAccess()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lmediabrowser/model/sync/SyncDataResponse;->ItemUserAccess:Ljava/util/HashMap;

    return-object v0
.end method

.method public final setItemIdsToRemove(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lmediabrowser/model/sync/SyncDataResponse;->ItemIdsToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method public final setItemUserAccess(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lmediabrowser/model/sync/SyncDataResponse;->ItemUserAccess:Ljava/util/HashMap;

    return-void
.end method
