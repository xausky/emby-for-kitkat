.class final Landroidx/leanback/app/BrowseFragment$BackStackListener;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackStackListener"
.end annotation


# instance fields
.field mIndexOfHeadersBackStack:I

.field mLastEntryCount:I

.field final synthetic this$0:Landroidx/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    const/4 p1, -0x1

    .line 154
    iput p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    return-void
.end method


# virtual methods
.method load(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "headerStackIndex"

    const/4 v1, -0x1

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 160
    iget-object p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    goto :goto_1

    .line 162
    :cond_1
    iget-object p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez p1, :cond_2

    .line 163
    iget-object p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackStackChanged()V
    .locals 4

    .line 176
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BrowseFragment"

    const-string v1, "getFragmentManager() is null, stack:"

    .line 177
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 183
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-le v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 185
    iget-object v3, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iput v2, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    goto :goto_0

    .line 188
    :cond_1
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-ge v0, v1, :cond_3

    .line 190
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-lt v1, v0, :cond_3

    .line 191
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    const/4 v1, -0x1

    .line 198
    iput v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 199
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v1, v1, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v1, :cond_3

    .line 200
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 204
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    return-void
.end method

.method save(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "headerStackIndex"

    .line 170
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
