.class public Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;
.super Landroid/app/Fragment;
.source "MySearchFragmentNoSpeech.java"


# static fields
.field private static final SEARCH_DELAY_MS:I = 0xdac


# instance fields
.field private mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field private mSearchField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Ltv/emby/embyatv/search/SearchRunnable;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0049

    .line 46
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const v0, 0x7f0a00eb

    invoke-virtual {p2, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_0

    .line 50
    new-instance p2, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p2}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 51
    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 52
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 55
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Landroidx/leanback/app/RowsSupportFragment;

    iput-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 58
    :goto_0
    new-instance p2, Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    invoke-direct {p2}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;-><init>()V

    .line 59
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setShadowEnabled(Z)V

    .line 60
    new-instance p3, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p3, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p3, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 61
    iget-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p3, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 64
    iget-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    new-instance p3, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$1;-><init>(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)V

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 72
    iget-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const/16 v0, 0x2d

    invoke-static {p3, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    .line 73
    new-instance p2, Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p2, p3, v0}, Ltv/emby/embyatv/search/SearchRunnable;-><init>(Landroid/app/Activity;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    const p2, 0x7f0a0274

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mSearchField:Landroid/widget/EditText;

    .line 77
    iget-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mSearchField:Landroid/widget/EditText;

    new-instance p3, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech$2;-><init>(Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object p2, p0, Ltv/emby/embyatv/search/MySearchFragmentNoSpeech;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    return-object p1
.end method
