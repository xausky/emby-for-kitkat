.class Landroidx/leanback/app/BrowseFragment$7;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/BrowseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseFragment;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$7;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1339
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$7;->this$0:Landroidx/leanback/app/BrowseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseFragment;->showHeaders(Z)V

    return-void
.end method
