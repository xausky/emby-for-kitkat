.class Ltv/emby/embyatv/browsing/StdGridFragment$10;
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

    .line 622
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 625
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getFilters()Ltv/emby/embyatv/model/FilterOptions;

    move-result-object p1

    if-nez p1, :cond_0

    .line 626
    new-instance p1, Ltv/emby/embyatv/model/FilterOptions;

    invoke-direct {p1}, Ltv/emby/embyatv/model/FilterOptions;-><init>()V

    .line 628
    :cond_0
    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/model/FilterOptions;->setUnwatchedOnly(Z)V

    .line 629
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateDisplayPrefs()V

    .line 630
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setFilters(Ltv/emby/embyatv/model/FilterOptions;)V

    .line 631
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mPosterSizeSetting:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mRowDef:Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->loadGrid(Ltv/emby/embyatv/browsing/BrowseRowDef;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 636
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mUnwatchedButton:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0801ad

    goto :goto_1

    :cond_2
    const v1, 0x7f0801ae

    :goto_1
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 637
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$10;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mFilterPopup:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/FilterOptions;->isUnwatchedOnly()Z

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/FilterPopup;->setUnwatchedOnly(Z)V

    :cond_3
    return-void
.end method
