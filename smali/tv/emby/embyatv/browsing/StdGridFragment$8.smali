.class Ltv/emby/embyatv/browsing/StdGridFragment$8;
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

    .line 581
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 585
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getToolBar()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object p1

    .line 586
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$900(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 587
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v4}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1000(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    if-nez v4, :cond_1

    .line 588
    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v4}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1100(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    .line 589
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v7, v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v6, v1, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 590
    iget-object v3, v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    iget-object v5, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v5}, Lmediabrowser/model/entities/DisplayPreferences;->getSortBy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v4, v4, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v4}, Lmediabrowser/model/entities/DisplayPreferences;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmediabrowser/model/entities/SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v3, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 593
    new-instance v0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$8;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 605
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
