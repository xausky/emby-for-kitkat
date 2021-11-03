.class Ltv/emby/embyatv/browsing/TabHomeFragment$2;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ltv/emby/embyatv/model/IItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    new-instance v0, Ltv/emby/embyatv/browsing/TabHomeFragment$2$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$2$1;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment$2;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
