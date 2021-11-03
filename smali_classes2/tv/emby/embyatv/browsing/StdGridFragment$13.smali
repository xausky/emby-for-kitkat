.class Ltv/emby/embyatv/browsing/StdGridFragment$13;
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

    .line 701
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$13;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 704
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$13;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/FilterPopup;->show()V

    return-void
.end method
