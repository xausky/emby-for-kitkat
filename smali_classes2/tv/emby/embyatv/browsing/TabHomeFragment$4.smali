.class Ltv/emby/embyatv/browsing/TabHomeFragment$4;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;
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

    .line 213
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshRows()V

    .line 217
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
