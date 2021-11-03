.class Ltv/emby/embyatv/browsing/StdBrowseFragment$3;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;->setupUIElements()V
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

    .line 308
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 316
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$3;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ItemPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
