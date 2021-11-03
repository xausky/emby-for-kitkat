.class public Ltv/emby/embyatv/search/MySearchFragment;
.super Landroidx/leanback/app/SearchFragment;
.source "MySearchFragment.java"

# interfaces
.implements Landroidx/leanback/app/SearchFragment$SearchResultProvider;


# static fields
.field private static final SEARCH_DELAY_MS:I = 0xdac


# instance fields
.field private mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private textEdited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->textEdited:Z

    return-void
.end method


# virtual methods
.method public getResultsAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Landroidx/leanback/app/SearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    invoke-direct {p1}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;-><init>()V

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setShadowEnabled(Z)V

    .line 44
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 45
    invoke-virtual {p0, p0}, Ltv/emby/embyatv/search/MySearchFragment;->setSearchResultProvider(Landroidx/leanback/app/SearchFragment$SearchResultProvider;)V

    .line 46
    new-instance p1, Ltv/emby/embyatv/search/MySearchFragment$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/search/MySearchFragment$1;-><init>(Ltv/emby/embyatv/search/MySearchFragment;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/search/MySearchFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 53
    new-instance p1, Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p1, v0, v1}, Ltv/emby/embyatv/search/SearchRunnable;-><init>(Landroid/app/Activity;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    .line 54
    iput-boolean v2, p0, Ltv/emby/embyatv/search/MySearchFragment;->textEdited:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01b1

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 63
    invoke-virtual {p0}, Ltv/emby/embyatv/search/MySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const/16 v0, 0x3c

    invoke-static {p3, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->textEdited:Z

    .line 78
    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/search/SearchRunnable;->setQueryString(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    const-wide/16 v2, 0xdac

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    :goto_0
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .line 90
    iget-boolean v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->textEdited:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/search/SearchRunnable;->setQueryString(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/search/MySearchFragment;->mDelayedLoad:Ltv/emby/embyatv/search/SearchRunnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/search/MySearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
