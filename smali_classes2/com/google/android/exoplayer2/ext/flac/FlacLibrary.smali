.class public final Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;
.super Ljava/lang/Object;
.source "FlacLibrary.java"


# static fields
.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "goog.exo.flac"

    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v1, "flacJNI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static varargs setLibraries([Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->setLibraries([Ljava/lang/String;)V

    return-void
.end method
