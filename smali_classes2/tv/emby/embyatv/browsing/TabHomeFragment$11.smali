.class Ltv/emby/embyatv/browsing/TabHomeFragment$11;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->refreshRows()V
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

    .line 638
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$11;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 641
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabHomeFragment$11$1;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment$11;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
