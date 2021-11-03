.class public final synthetic Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mkv/-$$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs;

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

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
