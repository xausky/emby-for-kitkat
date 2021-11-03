.class public Ltv/emby/embyatv/ui/AddToPlaylistPopup;
.super Ljava/lang/Object;
.source "AddToPlaylistPopup.java"


# instance fields
.field private mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private mAvailablePlaylists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:Landroid/widget/Button;

.field private mDTitle:Landroid/widget/TextView;

.field private mItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mNewName:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mPlaylists:Landroid/widget/Spinner;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mSelectedIndex:I

.field private nameFields:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mSelectedIndex:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mAvailablePlaylists:Ljava/util/List;

    .line 63
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0030

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDialogBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v2, 0x258

    invoke-static {p1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x190

    invoke-static {p1, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 68
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 69
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 70
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a0307

    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mDTitle:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mDTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a01ed

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mNewName:Landroid/widget/EditText;

    const p1, 0x7f0a01e8

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->nameFields:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0228

    .line 76
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPlaylists:Landroid/widget/Spinner;

    .line 77
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPlaylists:Landroid/widget/Spinner;

    new-instance v1, Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0a0204

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mOkButton:Landroid/widget/Button;

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mOkButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$2;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a008a

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mCancelButton:Landroid/widget/Button;

    .line 152
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mCancelButton:Landroid/widget/Button;

    new-instance v0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$3;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->nameFields:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)I
    .locals 0

    .line 44
    iget p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mSelectedIndex:I

    return p0
.end method

.method static synthetic access$102(Ltv/emby/embyatv/ui/AddToPlaylistPopup;I)I
    .locals 0

    .line 44
    iput p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mNewName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mAvailablePlaylists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/Spinner;
    .locals 0

    .line 44
    iget-object p0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPlaylists:Landroid/widget/Spinner;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 162
    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mPopup:Landroid/widget/PopupWindow;

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

    .line 166
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 169
    new-instance p1, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {p1}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 170
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    const-string v0, "Playlist"

    .line 171
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    const/4 v0, 0x0

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/ItemQuery;->setEnableImages(Ljava/lang/Boolean;)V

    .line 174
    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    const-string v0, "SortName"

    .line 175
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 176
    sget-object v0, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    const/16 v0, 0x3e8

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mAvailablePlaylists:Ljava/util/List;

    .line 180
    new-instance v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    const-string v1, "NEW"

    .line 181
    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v2, 0x7f10051f

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->mAvailablePlaylists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/AddToPlaylistPopup$4;-><init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
