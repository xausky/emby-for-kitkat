.class public final synthetic Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$1:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$2:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$3:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method


# virtual methods
.method public final onTracksSelected(ZLjava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$1:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$2:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$SJJCZZJJjIw7uRbYhQYc32lsWqk;->f$3:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->lambda$new$0(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLjava/util/List;)V

    return-void
.end method
