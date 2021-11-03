.class final Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private final globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 44
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method getGlobalStyles()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    return-object v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method getRoot()Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    return-object v0
.end method
