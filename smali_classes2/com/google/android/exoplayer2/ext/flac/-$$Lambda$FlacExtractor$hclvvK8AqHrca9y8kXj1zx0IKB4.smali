.class public final synthetic Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;->INSTANCE:Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacExtractor$hclvvK8AqHrca9y8kXj1zx0IKB4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
