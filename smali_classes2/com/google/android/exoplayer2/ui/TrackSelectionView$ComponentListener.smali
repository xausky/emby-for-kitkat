.class Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->access$100(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V

    return-void
.end method
