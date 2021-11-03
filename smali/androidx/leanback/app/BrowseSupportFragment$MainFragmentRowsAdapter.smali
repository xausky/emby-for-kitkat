.class public Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/fragment/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 514
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    return-void

    .line 512
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public findRowViewHolderByPosition(I)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 0

    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 0

    return-void
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 0

    return-void
.end method

.method public setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0

    return-void
.end method
