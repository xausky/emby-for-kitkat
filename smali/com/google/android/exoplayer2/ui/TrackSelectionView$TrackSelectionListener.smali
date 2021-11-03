.class public interface abstract Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrackSelectionListener"
.end annotation


# virtual methods
.method public abstract onTrackSelectionChanged(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation
.end method
