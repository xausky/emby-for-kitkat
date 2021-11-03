.class public Ltv/emby/embyatv/ui/ClockUserView;
.super Landroid/widget/RelativeLayout;
.source "ClockUserView.java"


# instance fields
.field mClock:Landroid/widget/TextClock;

.field mUserRow:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/ClockUserView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/ClockUserView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0036

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/ClockUserView;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ClockUserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    const v2, 0x7f0a00a4

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    .line 47
    iget-object v2, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object v1, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, -0x1000000

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextClock;->setShadowLayer(FFFI)V

    .line 49
    iget-object v1, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setTextColor(I)V

    const v1, 0x7f0a031f

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ltv/emby/embyatv/ui/ClockUserView;->mUserRow:Landroid/widget/LinearLayout;

    const v1, 0x7f0a031e

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a031d

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 53
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    const v2, 0x7f0801b0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const v7, 0x7f0801b0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setSmallPresentation()V
    .locals 3

    .line 68
    iget-object v0, p0, Ltv/emby/embyatv/ui/ClockUserView;->mUserRow:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    iget-object v1, p0, Ltv/emby/embyatv/ui/ClockUserView;->mClock:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
