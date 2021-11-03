.class public Ltv/emby/embyatv/ui/EditSubPopup;
.super Ljava/lang/Object;
.source "EditSubPopup.java"


# instance fields
.field private mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private mCurrentNone:Landroid/widget/TextView;

.field private mCurrentSubs:Landroid/widget/LinearLayout;

.field private mForcedOnly:Landroid/widget/CheckBox;

.field private mHashMatch:Landroid/widget/CheckBox;

.field private mItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mItemName:Landroid/widget/TextView;

.field private mLanguageOptions:Landroid/widget/Spinner;

.field private mLanguages:[Lmediabrowser/model/localization/LanguageCulture;

.field private mNoResults:Landroid/widget/TextView;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mSearchResults:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 66
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d003c

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDialogBackgroundResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v2, 0x302

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 71
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a01cc

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mTitle:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a018c

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItemName:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItemName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a025b

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mNoResults:Landroid/widget/TextView;

    const v0, 0x7f0a0275

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mSearchResults:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0259

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mHashMatch:Landroid/widget/CheckBox;

    const v0, 0x7f0a012a

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mForcedOnly:Landroid/widget/CheckBox;

    const v0, 0x7f0a0278

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/EditSubPopup$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/EditSubPopup$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bf

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentNone:Landroid/widget/TextView;

    const v0, 0x7f0a00be

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentSubs:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0195

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mLanguageOptions:Landroid/widget/Spinner;

    .line 151
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/EditSubPopup$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/EditSubPopup$2;-><init>(Ltv/emby/embyatv/ui/EditSubPopup;)V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetCultures(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/EditSubPopup;)[Lmediabrowser/model/localization/LanguageCulture;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mLanguages:[Lmediabrowser/model/localization/LanguageCulture;

    return-object p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/ui/EditSubPopup;[Lmediabrowser/model/localization/LanguageCulture;)[Lmediabrowser/model/localization/LanguageCulture;
    .locals 0

    .line 45
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mLanguages:[Lmediabrowser/model/localization/LanguageCulture;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mSearchResults:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentSubs:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/EditSubPopup;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mLanguageOptions:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mHashMatch:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mForcedOnly:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mNoResults:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/ui/EditSubPopup;Ljava/lang/String;[Lmediabrowser/model/localization/LanguageCulture;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/ui/EditSubPopup;->getLanguageIndex(Ljava/lang/String;[Lmediabrowser/model/localization/LanguageCulture;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/ui/EditSubPopup;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup;->showInternal(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method private getLanguageIndex(Ljava/lang/String;[Lmediabrowser/model/localization/LanguageCulture;)I
    .locals 3

    .line 174
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mLanguageOptions:Landroid/widget/Spinner;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 175
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 176
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lmediabrowser/model/localization/LanguageCulture;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showInternal(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 7

    .line 208
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 209
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 210
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 211
    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 213
    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->GetSubtitleStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/entities/MediaStream;

    const v4, 0x7f0d00bd

    const/4 v5, 0x0

    .line 214
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a018c

    .line 215
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v5, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v6, 0x7f0a0180

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v5, v3, v6}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/entities/MediaStream;Landroid/widget/LinearLayout;)V

    .line 217
    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getIsExternal()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/users/UserPolicy;->getEnableSubtitleManagement()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/users/UserPolicy;->getIsAdministrator()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    :cond_1
    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 220
    new-instance v6, Ltv/emby/embyatv/ui/EditSubPopup$4;

    invoke-direct {v6, p0, v5, v3}, Ltv/emby/embyatv/ui/EditSubPopup$4;-><init>(Ltv/emby/embyatv/ui/EditSubPopup;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_2
    iget-object v3, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentSubs:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentSubs:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mCurrentNone:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 258
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v0, 0x7f10065e

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 264
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 184
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 188
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/EditSubPopup$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/EditSubPopup$3;-><init>(Ltv/emby/embyatv/ui/EditSubPopup;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup;->showInternal(Lmediabrowser/model/dto/BaseItemDto;)V

    :goto_0
    return-void
.end method
