.class public Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;
.super Ljava/lang/Object;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mFragmentHost:Landroidx/leanback/app/BrowseFragment$FragmentHostImpl;

.field private mScalingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public final getFragment()Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getFragmentHost()Landroidx/leanback/app/BrowseFragment$FragmentHost;
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseFragment$FragmentHostImpl;

    return-object v0
.end method

.method public isScalingEnabled()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionStart()V
    .locals 0

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 0

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    return-void
.end method

.method setFragmentHost(Landroidx/leanback/app/BrowseFragment$FragmentHostImpl;)V
    .locals 0

    .line 484
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseFragment$FragmentHostImpl;

    return-void
.end method

.method public setScalingEnabled(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return-void
.end method
