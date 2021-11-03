.class public final enum Ltv/emby/embyatv/querying/QueryType;
.super Ljava/lang/Enum;
.source "QueryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/querying/QueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/querying/QueryType;

.field public static final enum AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Artists:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum AudioPlaylists:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Episodes:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Genres:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Items:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum LatestItems:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum NextUp:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Persons:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Premieres:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Search:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Season:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Specials:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum StaticChapters:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum StaticItems:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum StaticPeople:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum StaticServers:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Trailers:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Upcoming:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Users:Ltv/emby/embyatv/querying/QueryType;

.field public static final enum Views:Ltv/emby/embyatv/querying/QueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Items"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    .line 5
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "NextUp"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    .line 6
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Views"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    .line 7
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Season"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Season:Ltv/emby/embyatv/querying/QueryType;

    .line 8
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Upcoming"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Upcoming:Ltv/emby/embyatv/querying/QueryType;

    .line 9
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "SimilarSeries"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    .line 10
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "SimilarMovies"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    .line 11
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "StaticPeople"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->StaticPeople:Ltv/emby/embyatv/querying/QueryType;

    .line 12
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "StaticChapters"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->StaticChapters:Ltv/emby/embyatv/querying/QueryType;

    .line 13
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "StaticServers"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->StaticServers:Ltv/emby/embyatv/querying/QueryType;

    .line 14
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Users"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Users:Ltv/emby/embyatv/querying/QueryType;

    .line 15
    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Search"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Search:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Specials"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Specials:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Trailers"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Trailers:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "LiveTvChannel"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "LiveTvProgram"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "LiveTvRecording"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "StaticItems"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->StaticItems:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Persons"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "StaticAudioQueueItems"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "AlbumArtists"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "AudioPlaylists"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->AudioPlaylists:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "ContinueWatching"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "LatestItems"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->LatestItems:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "SeriesTimer"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Premieres"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Episodes"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Episodes:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Genres"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Genres:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "Artists"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    new-instance v0, Ltv/emby/embyatv/querying/QueryType;

    const-string v1, "LiveTvButtons"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Ltv/emby/embyatv/querying/QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

    const/16 v0, 0x1e

    .line 3
    new-array v0, v0, [Ltv/emby/embyatv/querying/QueryType;

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Season:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Upcoming:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v7

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v8

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticPeople:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v9

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticChapters:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v10

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticServers:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v11

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Users:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v12

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Search:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v13

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Specials:Ltv/emby/embyatv/querying/QueryType;

    aput-object v1, v0, v14

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Trailers:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticItems:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->AudioPlaylists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LatestItems:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Episodes:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Genres:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvButtons:Ltv/emby/embyatv/querying/QueryType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Ltv/emby/embyatv/querying/QueryType;->$VALUES:[Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/querying/QueryType;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/embyatv/querying/QueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/querying/QueryType;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/querying/QueryType;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/embyatv/querying/QueryType;->$VALUES:[Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v0}, [Ltv/emby/embyatv/querying/QueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/querying/QueryType;

    return-object v0
.end method
