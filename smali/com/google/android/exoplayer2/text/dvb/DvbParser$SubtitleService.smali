.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleService"
.end annotation


# instance fields
.field public final ancillaryCluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final objects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 859
    iput p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 860
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    .line 861
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    .line 862
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    .line 863
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    .line 864
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 874
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    return-void
.end method
