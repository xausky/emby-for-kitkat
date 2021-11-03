.class public Ltv/emby/embyatv/ui/InteractiveProgressBar;
.super Landroid/widget/FrameLayout;
.source "InteractiveProgressBar.java"


# instance fields
.field private mBackInterval:I

.field private mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

.field private mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mChapterMarkFrame:Landroid/widget/FrameLayout;

.field private mChapterMode:Z

.field private mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

.field private mChapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentChapterNdx:I

.field private mCurrentFocusPos:I

.field private mCurrentItemId:Ljava/lang/String;

.field private mFocusInd:Landroid/widget/ImageView;

.field private mFocusedButton:Landroid/widget/TextView;

.field private mFocusedItems:Landroid/widget/FrameLayout;

.field private mFocusedTime:Landroid/widget/TextView;

.field private mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field private mFwdInterval:I

.field private mGotFocus:Z

.field private mImageWidth:I

.field private mInitialKeyDownTime:J

.field private mLastKeyDownTime:J

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressBlocker:Landroid/widget/FrameLayout;

.field private mProgressStartOffset:I

.field private mThumbImage:Landroid/widget/ImageView;

.field private mThumbPositions:[I

.field private mThumbTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTickHeight:I

.field private mTickWidth:I

.field private processedSkipButton:Z

.field private skipDelay:I

.field private startInChapterMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mGotFocus:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    .line 50
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->startInChapterMode:Z

    .line 53
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    .line 61
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    .line 62
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgressStartOffset:I

    const/16 v1, 0x2710

    .line 63
    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mBackInterval:I

    const/16 v1, 0x7530

    .line 64
    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFwdInterval:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mInitialKeyDownTime:J

    .line 70
    iput-wide v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mLastKeyDownTime:J

    const/16 v1, 0x96

    .line 71
    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->skipDelay:I

    .line 72
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->processedSkipButton:Z

    .line 76
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mGotFocus:Z

    .line 49
    iput-boolean p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    .line 50
    iput-boolean p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->startInChapterMode:Z

    .line 53
    iput p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    .line 61
    iput p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    .line 62
    iput p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgressStartOffset:I

    const/16 v0, 0x2710

    .line 63
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mBackInterval:I

    const/16 v0, 0x7530

    .line 64
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFwdInterval:I

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mInitialKeyDownTime:J

    .line 70
    iput-wide v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mLastKeyDownTime:J

    const/16 v0, 0x96

    .line 71
    iput v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->skipDelay:I

    .line 72
    iput-boolean p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->processedSkipButton:Z

    .line 81
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    return p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->processedSkipButton:Z

    return p0
.end method

.method static synthetic access$1002(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->processedSkipButton:Z

    return p1
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mLastKeyDownTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Ltv/emby/embyatv/ui/InteractiveProgressBar;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mLastKeyDownTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 0

    .line 36
    iget p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->skipDelay:I

    return p0
.end method

.method static synthetic access$1202(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I
    .locals 0

    .line 36
    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->skipDelay:I

    return p1
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 0

    .line 36
    iget p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mBackInterval:I

    return p0
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 0

    .line 36
    iget p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFwdInterval:I

    return p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mInitialKeyDownTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Ltv/emby/embyatv/ui/InteractiveProgressBar;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mInitialKeyDownTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->hasThumbs()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setFocusPosition(I)V

    return-void
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 0

    .line 36
    iget p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    return p0
.end method

.method static synthetic access$2208(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 2

    .line 36
    iget v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    return v0
.end method

.method static synthetic access$2210(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 2

    .line 36
    iget v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    return v0
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->scrollToChapterNdx(I)V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mGotFocus:Z

    return p0
.end method

.method static synthetic access$302(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mGotFocus:Z

    return p1
.end method

.method static synthetic access$400(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedItems:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->startInChapterMode:Z

    return p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->startInChapterMode:Z

    return p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/ui/InteractiveProgressBar;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setChapterMode(Z)V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/ui/InteractiveProgressBar;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/ui/InteractiveProgressBar;)I
    .locals 0

    .line 36
    iget p0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    return p0
.end method

.method static synthetic access$902(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)I
    .locals 0

    .line 36
    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    return p1
.end method

.method private addChapterMark(I)V
    .locals 4

    .line 491
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 492
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mTickWidth:I

    iget v3, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mTickHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 493
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getRelativePosition(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const p1, 0x7f08016b

    .line 494
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getClosestChapterImageIndex(J)I
    .locals 4

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    mul-long p1, p1, v0

    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/ChapterInfoDto;

    .line 292
    invoke-virtual {v2}, Lmediabrowser/model/dto/ChapterInfoDto;->getStartPositionTicks()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private getClosestThumbImageIndex(I)I
    .locals 1

    .line 279
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 282
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRelativePosition(I)I
    .locals 1

    int-to-float p1, p1

    .line 351
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 352
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private hasChapters()Z
    .locals 1

    .line 360
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasThumbs()Z
    .locals 1

    .line 356
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 85
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0053

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->addView(Landroid/view/View;)V

    const v0, 0x7f0a023b

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0178

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedItems:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0129

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedTime:Landroid/widget/TextView;

    const v0, 0x7f0a0127

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedButton:Landroid/widget/TextView;

    const v0, 0x7f0a0301

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ltv/emby/embyatv/util/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    const v0, 0x7f0a0300

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusInd:Landroid/widget/ImageView;

    const v0, 0x7f0a009a

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0a023f

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgressBlocker:Landroid/widget/FrameLayout;

    const v0, 0x7f0a009c

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mTickHeight:I

    .line 102
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mTickWidth:I

    .line 103
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mImageWidth:I

    .line 104
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_skip_fwd"

    const-string v1, "30000"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFwdInterval:I

    .line 105
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_skip_back"

    const-string v1, "10000"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mBackInterval:I

    .line 107
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    new-instance v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$1;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    new-instance v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$2;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private scrollToChapterNdx(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 259
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "*** Scrolling to chapter index: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar$3;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/ChapterInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/ChapterInfoDto;->getStartPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 271
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getRelativePosition(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 272
    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setFocusPosition(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "*** Invalid chapter position requested: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setChapterMode(Z)V
    .locals 3

    .line 234
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusInd:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    .line 240
    iget p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getClosestChapterImageIndex(J)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    .line 241
    iget p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentChapterNdx:I

    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->scrollToChapterNdx(I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 245
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 247
    iput-boolean v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    .line 248
    invoke-direct {p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->hasThumbs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusInd:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setFocusPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setFocusPosition(I)V
    .locals 6

    .line 300
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getRelativePosition(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 302
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedItems:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iput p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    .line 304
    iget-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 310
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFocusedTime:Landroid/widget/TextView;

    iget v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->formatMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getClosestThumbImageIndex(I)I

    move-result p1

    .line 312
    iget-boolean v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMode:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_1

    .line 313
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    aget v1, v1, p1

    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentFocusPos:I

    .line 314
    new-instance v1, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v1}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 315
    sget-object v2, Lmediabrowser/model/entities/ImageType;->Thumbnail:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 316
    iget v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mImageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 317
    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v0}, Lmediabrowser/model/dto/ImageOptions;->setEnableImageEnhancers(Z)V

    .line 319
    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    aget v2, v2, p1

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setPositionTicks(Ljava/lang/Long;)V

    .line 321
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentItemId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "***** Requesting %d thumb: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object v1, v4, p1

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 324
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/InteractiveProgressBar$4;

    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v2, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar$4;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 344
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 345
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbImage:Landroid/widget/ImageView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public canFocus()Z
    .locals 1

    .line 500
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public setCanFocus(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    return-void
.end method

.method public setChapters(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    .line 391
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterMarkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 392
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/ChapterInfoDto;

    .line 394
    invoke-virtual {v1}, Lmediabrowser/model/dto/ChapterInfoDto;->getStartPositionTicks()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->addChapterMark(I)V

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 399
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 400
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 401
    new-instance v0, Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    .line 402
    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterRow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 403
    iget-object p2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->setItems(Ljava/util/List;)V

    .line 405
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    new-instance p2, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$5;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->setClickListener(Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;)V

    .line 424
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mChapterAdapter:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    new-instance p2, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar$6;-><init>(Ltv/emby/embyatv/ui/InteractiveProgressBar;)V

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->setKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public setCurrentItemId(Ljava/lang/String;)V
    .locals 0

    .line 523
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mCurrentItemId:Ljava/lang/String;

    return-void
.end method

.method public setFragment(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 524
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p1, 0x0

    .line 519
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartOffset(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 503
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 507
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public setStartInChapterMode(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->startInChapterMode:Z

    return-void
.end method

.method public setStartOffset(I)V
    .locals 1

    .line 511
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 512
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgressBlocker:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 513
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->getRelativePosition(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    iget-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mProgressBlocker:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setThumbNails([Lmediabrowser/model/dto/ThumbnailInfoDto;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 364
    array-length v0, p1

    if-lez v0, :cond_2

    .line 366
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 368
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 369
    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmediabrowser/model/dto/ThumbnailInfoDto;->getPositionTicks()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 370
    iget-object v2, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmediabrowser/model/dto/ThumbnailInfoDto;->getImageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 376
    iget-object v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    aget v1, v1, v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    aget v3, v3, v0

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    .line 378
    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mBackInterval:I

    .line 379
    iput v1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mFwdInterval:I

    .line 381
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "**** Loaded %d thumbs with interval of %d for current item"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 384
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbPositions:[I

    .line 385
    iput-object p1, p0, Ltv/emby/embyatv/ui/InteractiveProgressBar;->mThumbTags:Ljava/util/List;

    :cond_3
    :goto_1
    return-void
.end method
