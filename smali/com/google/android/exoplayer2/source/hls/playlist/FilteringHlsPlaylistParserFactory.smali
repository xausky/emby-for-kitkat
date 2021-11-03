.class public final Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;


# instance fields
.field private final hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

.field private final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 40
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 46
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method

.method public createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 53
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method
