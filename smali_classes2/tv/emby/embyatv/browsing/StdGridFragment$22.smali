.class Ltv/emby/embyatv/browsing/StdGridFragment$22;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 974
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 977
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->ShowFanart:Z

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBackdropImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2802(Ltv/emby/embyatv/browsing/StdGridFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2900(Ltv/emby/embyatv/browsing/StdGridFragment;)V

    .line 981
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mHideLetterJump:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$3000(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSortChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/JumpList;->setCurrentButton(Ljava/lang/String;)V

    .line 982
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$22;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    return-void
.end method
