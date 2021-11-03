.class Landroidx/leanback/app/VerticalGridFragment$4;
.super Ljava/lang/Object;
.source "VerticalGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/VerticalGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/VerticalGridFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/VerticalGridFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment$4;->this$0:Landroidx/leanback/app/VerticalGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment$4;->this$0:Landroidx/leanback/app/VerticalGridFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/VerticalGridFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
