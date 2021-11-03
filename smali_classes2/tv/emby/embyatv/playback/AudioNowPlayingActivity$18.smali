.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCurrentItemDisplay(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

.field final synthetic val$ndx:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V
    .locals 0

    .line 471
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iput p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 474
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 475
    iget v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;->val$ndx:I

    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 477
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
