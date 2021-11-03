.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/extractor/Extractor;)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    const/4 v0, 0x0

    .line 1102
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    :cond_0
    return-void
.end method

.method public selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1073
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_2

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1077
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1078
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1085
    throw p2

    .line 1084
    :catch_0
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_4

    .line 1095
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 1096
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 1088
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "None of the available extractors ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 1090
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
