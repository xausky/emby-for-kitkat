.class public Ltv/emby/embyatv/details/PhotoPlayerActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "PhotoPlayerActivity.java"


# instance fields
.field currentImageNdx:I

.field currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

.field displayHeight:I

.field displayWidth:I

.field handler:Landroid/os/Handler;

.field hidePopup:Landroid/view/animation/Animation;

.field isLoadingNext:Z

.field isLoadingPrev:Z

.field isPlaying:Z

.field isTransitioning:Z

.field private itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private itemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mPlayIcon:Landroid/widget/ImageView;

.field mPopupArea:Landroid/widget/FrameLayout;

.field mPopupPanelVisible:Z

.field mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

.field mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field mThumbRow:Landroidx/leanback/widget/ListRow;

.field mainImages:[Landroid/widget/ImageView;

.field nextImage:Landroid/widget/ImageView;

.field nextImageNdx:I

.field playRunnable:Ljava/lang/Runnable;

.field prevImage:Landroid/widget/ImageView;

.field showPopup:Landroid/view/animation/Animation;

.field wasPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageNdx:I

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageNdx:I

    .line 58
    iput-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->wasPlaying:Z

    .line 69
    iput-object p0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 262
    new-instance v0, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$3;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->playRunnable:Ljava/lang/Runnable;

    .line 387
    new-instance v0, Ltv/emby/embyatv/details/PhotoPlayerActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$7;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    .line 394
    new-instance v0, Ltv/emby/embyatv/details/PhotoPlayerActivity$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$8;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->itemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hideThumbPanel()V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->stop()V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->play()V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/details/PhotoPlayerActivity;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->next(I)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/details/PhotoPlayerActivity;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->transition(I)V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadPrev()V

    return-void
.end method

.method static synthetic access$800(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->showThumbPanel()V

    return-void
.end method

.method private currentImageView()Landroid/widget/ImageView;
    .locals 2

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    iget v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageNdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private hideThumbPanel()V
    .locals 2

    .line 451
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hidePopup:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    return-void
.end method

.method private loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V
    .locals 9

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x7f0a0008

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingNext:Z

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x7f0a0009

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingPrev:Z

    .line 358
    :cond_1
    iget v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayWidth:I

    iget v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayHeight:I

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;II)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayWidth:I

    iget v6, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayHeight:I

    const v7, 0x7f080160

    new-instance v8, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;

    invoke-direct {v8, p0, p2, p1, p3}, Ltv/emby/embyatv/details/PhotoPlayerActivity$6;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;Landroid/widget/ImageView;Lmediabrowser/model/dto/BaseItemDto;Z)V

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IIILcom/bumptech/glide/request/RequestListener;)V

    :cond_2
    return-void
.end method

.method private loadNext()V
    .locals 2

    .line 291
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->peekNextMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private loadPrev()V
    .locals 2

    .line 296
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasPrevMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->peekPrevMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->prevImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private next(I)V
    .locals 3

    .line 253
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->nextMedia()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    .line 254
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->prevImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPlayIcon:Landroid/widget/ImageView;

    const-string v1, "Video"

    iget-object v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->transition(I)V

    .line 258
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadNext()V

    return-void
.end method

.method private nextImageView()Landroid/widget/ImageView;
    .locals 2

    .line 288
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    iget v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageNdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private play()V
    .locals 4

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    .line 276
    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    const/16 v0, 0x708

    .line 277
    invoke-direct {p0, v0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->next(I)V

    .line 278
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->playRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupPopupAnimations()V
    .locals 2

    const v0, 0x7f010006

    .line 403
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->showPopup:Landroid/view/animation/Animation;

    .line 404
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->showPopup:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/details/PhotoPlayerActivity$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$9;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f010001

    .line 421
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hidePopup:Landroid/view/animation/Animation;

    .line 422
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hidePopup:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/details/PhotoPlayerActivity$10;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$10;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private showThumbPanel()V
    .locals 2

    .line 444
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 445
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setPosition(I)V

    .line 446
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->showPopup:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    return-void
.end method

.method private stop()V
    .locals 2

    .line 282
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->playRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 284
    iput-boolean v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    return-void
.end method

.method private transition(I)V
    .locals 3

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isTransitioning:Z

    .line 303
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    add-int/lit8 v1, p1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/PhotoPlayerActivity$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$4;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 324
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$5;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected handlePlayKey()Z
    .locals 5

    .line 206
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 207
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->stop()V

    .line 208
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 209
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hideThumbPanel()V

    .line 210
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-virtual {v2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 211
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    .line 212
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 213
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadNext()V

    .line 214
    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    new-instance v2, Ltv/emby/embyatv/details/PhotoPlayerActivity$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$2;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 224
    :cond_1
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->stop()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->play()V

    :goto_0
    return v1
.end method

.method protected handleSelectKey()Z
    .locals 2

    .line 231
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->stop()V

    .line 233
    :cond_0
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->hideThumbPanel()V

    .line 234
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 235
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    .line 236
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadNext()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 77
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->setContentView(I)V

    .line 78
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 79
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mainImages:[Landroid/widget/ImageView;

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const p1, 0x7f0a0008

    .line 80
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p1, 0x7f0a0009

    .line 82
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->prevImage:Landroid/widget/ImageView;

    .line 83
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->prevImage:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p1, 0x7f0a021a

    .line 84
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayWidth:I

    .line 86
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->displayHeight:I

    const p1, 0x7f0a022b

    .line 88
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupArea:Landroid/widget/FrameLayout;

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handler:Landroid/os/Handler;

    .line 92
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    .line 93
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Play"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadImage(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    .line 95
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadNext()V

    .line 96
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->loadPrev()V

    .line 99
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p1}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 101
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 102
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/leanback/app/RowsSupportFragment;

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 108
    :goto_0
    new-instance p1, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    .line 109
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 110
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 111
    new-instance p1, Landroidx/leanback/widget/ListRow;

    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentMediaAdapter()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mThumbRow:Landroidx/leanback/widget/ListRow;

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mThumbRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 114
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->itemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 115
    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->setupPopupAnimations()V

    .line 117
    new-instance p1, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;-><init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 248
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    .line 249
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->stop()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 201
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 202
    iget-boolean v0, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity;->wasPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->play()V

    :cond_0
    return-void
.end method
