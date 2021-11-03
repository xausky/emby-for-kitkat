.class public Lmediabrowser/model/playlists/PlaylistItemQuery;
.super Ljava/lang/Object;
.source "PlaylistItemQuery.java"


# instance fields
.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Id:Ljava/lang/String;

.field private Limit:Ljava/lang/Integer;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/playlists/PlaylistItemQuery;->UserId:Ljava/lang/String;

    return-void
.end method
