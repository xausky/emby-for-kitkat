.class Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->onResponse(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

.field final synthetic val$response:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;Ljava/lang/Integer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->val$response:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->val$response:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->setPosition(I)V

    .line 222
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$000(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 223
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1$1;->this$3:Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;->this$2:Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    :cond_0
    return-void
.end method
