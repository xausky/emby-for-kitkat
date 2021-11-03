.class Ltv/emby/embyatv/browsing/StdGridFragment$9;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->addTools()V
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

    .line 610
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 614
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1300(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/JumpList;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1500(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$9;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1400(Ltv/emby/embyatv/browsing/StdGridFragment;)Ltv/emby/embyatv/ui/JumpList;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/JumpList;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/JumpList;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
