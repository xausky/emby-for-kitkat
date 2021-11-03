.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Lcom/google/android/exoplayer2/text/webvtt/CssParser;

.field private final cueParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;

.field private final definedStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 50
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cueParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/CssParser;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    return-void
.end method

.method private static getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v2
.end method

.method private static skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 61
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 63
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    .line 64
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 68
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 78
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 83
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/CssParser;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 81
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 86
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cueParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 87
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    goto :goto_1

    .line 92
    :cond_5
    new-instance p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
