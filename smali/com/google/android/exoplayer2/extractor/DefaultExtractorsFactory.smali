.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTENSION_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingEnabled:Z

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 72
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 74
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAvailable"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 79
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_1
    :cond_0
    :goto_0
    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 6

    monitor-enter p0

    const/16 v0, 0xe

    .line 227
    :try_start_0
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 228
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 229
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 230
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 231
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 237
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 243
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 244
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 245
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 246
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 247
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 248
    new-instance v3, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 249
    new-instance v3, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 255
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    aput-object v3, v0, v1

    .line 256
    sget-object v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xd

    if-eqz v1, :cond_0

    .line 258
    :try_start_1
    sget-object v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/Extractor;

    aput-object v1, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;-><init>()V

    aput-object v1, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 226
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 133
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 145
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 119
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 183
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 158
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 195
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 170
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 221
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 220
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 207
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit p0

    throw p1
.end method
