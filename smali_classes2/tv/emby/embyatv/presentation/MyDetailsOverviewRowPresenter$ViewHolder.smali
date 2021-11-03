.class public final Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;
.super Landroidx/leanback/widget/RowPresenter$ViewHolder;
.source "MyDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAddedDate:Landroid/widget/TextView;

.field private mButtonRow:Landroid/widget/LinearLayout;

.field private mGenreRow:Landroid/widget/LinearLayout;

.field private mInfoRow:Landroid/widget/LinearLayout;

.field private mPoster:Landroid/widget/ImageView;

.field private mSelectionRow:Ltv/emby/embyatv/ui/MediaSelectorBar;

.field private mSummary:Landroid/widget/TextView;

.field private mTagLine:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private roboto:Landroid/graphics/Typeface;

.field final synthetic this$0:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;Landroid/view/View;)V
    .locals 2

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->this$0:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;

    .line 56
    invoke-direct {p0, p2}, Landroidx/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->roboto:Landroid/graphics/Typeface;

    const v0, 0x7f0a011c

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a02db

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTagLine:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTagLine:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTagLine:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a004c

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mAddedDate:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mAddedDate:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mAddedDate:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0118

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0119

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011a

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/MediaSelectorBar;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSelectionRow:Ltv/emby/embyatv/ui/MediaSelectorBar;

    const v0, 0x7f0a01c9

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mPoster:Landroid/widget/ImageView;

    const v0, 0x7f0a0116

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011b

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 75
    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSummaryTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder$1;-><init>(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTagLine:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mAddedDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mPoster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Ltv/emby/embyatv/ui/MediaSelectorBar;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mSelectionRow:Ltv/emby/embyatv/ui/MediaSelectorBar;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method
