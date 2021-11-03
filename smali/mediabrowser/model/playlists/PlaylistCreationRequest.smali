.class public Lmediabrowser/model/playlists/PlaylistCreationRequest;
.super Ljava/lang/Object;
.source "PlaylistCreationRequest.java"


# instance fields
.field private ItemIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MediaType:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->setItemIdList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getItemIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->ItemIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setItemIdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->ItemIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistCreationRequest;->UserId:Ljava/lang/String;

    return-void
.end method
