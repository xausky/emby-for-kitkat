.class Ltv/emby/embyatv/browsing/TabHomeFragment$2$1;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment$2;->onItemChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment$2;)V
    .locals 0

    .line 163
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/TabHomeFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshRows()V

    return-void
.end method
