.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final AC4_FILE_EXTENSION:Ljava/lang/String; = ".ac4"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 82
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 3

    .line 312
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 318
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ZZ)V

    return-object v0
.end method

.method private static buildResultForSameExtractorType(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 296
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz v0, :cond_0

    .line 297
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 298
    :cond_0
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz p1, :cond_1

    .line 299
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 300
    :cond_1
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz p1, :cond_2

    .line 301
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 302
    :cond_2
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-eqz p1, :cond_3

    .line 303
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 304
    :cond_3
    instance-of p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz p0, :cond_4

    .line 305
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "text/vtt"

    .line 191
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".webvtt"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".vtt"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, ".aac"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    :cond_2
    const-string v0, ".ac3"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".ec3"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ".ac4"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    :cond_4
    const-string v0, ".mp3"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    :cond_5
    const-string v0, ".mp4"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".m4"

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".mp4"

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".cmf"

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 211
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    .line 208
    :cond_7
    :goto_0
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 199
    :cond_8
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1

    .line 194
    :cond_9
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1
.end method

.method private static createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    .line 272
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    .line 275
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    return-object v0
.end method

.method private static createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "application/cea-608"

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 238
    invoke-static {v0, p1, p3, v0}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 237
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 246
    :goto_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "audio/mp4a-latm"

    .line 251
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    :cond_2
    const-string p2, "video/avc"

    .line 254
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 259
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 280
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 285
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 286
    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_1

    .line 287
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z
    .locals 1

    .line 335
    instance-of v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 330
    throw p0

    .line 329
    :catch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/extractor/Extractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 98
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 99
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-static {p1, p3, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResultForSameExtractorType(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p6

    if-eqz p6, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected previousExtractor type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 112
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 113
    invoke-interface {p7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 114
    invoke-static {p1, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 115
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 121
    :cond_3
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-nez p2, :cond_4

    .line 122
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p6, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p2, p6, p5}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 123
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 124
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 128
    :cond_4
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_5

    .line 129
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .line 130
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 131
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 135
    :cond_5
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_6

    .line 136
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .line 137
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 138
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 142
    :cond_6
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez p2, :cond_7

    .line 143
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    .line 144
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 145
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 149
    :cond_7
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-nez p2, :cond_8

    .line 150
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p6, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p6, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 152
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_8

    .line 153
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 157
    :cond_8
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-nez p2, :cond_9

    .line 159
    invoke-static {p5, p3, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p2

    .line 160
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 161
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 165
    :cond_9
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p2, :cond_a

    .line 166
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean p6, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 167
    invoke-static {p2, p6, p3, p4, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p2

    .line 173
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 174
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 179
    :cond_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1
.end method
