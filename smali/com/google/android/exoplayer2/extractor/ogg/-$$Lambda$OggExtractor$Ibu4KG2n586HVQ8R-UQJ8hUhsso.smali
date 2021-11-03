.class public final synthetic Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;->INSTANCE:Lcom/google/android/exoplayer2/extractor/ogg/-$$Lambda$OggExtractor$Ibu4KG2n586HVQ8R-UQJ8hUhsso;

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

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
