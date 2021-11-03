.class Ltv/emby/embyatv/browsing/StdBrowseFragment$6;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$6;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$400(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ItemPanel;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
