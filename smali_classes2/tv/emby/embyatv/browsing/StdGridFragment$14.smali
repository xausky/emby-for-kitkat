.class Ltv/emby/embyatv/browsing/StdGridFragment$14;
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

    .line 711
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 714
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {p1}, Ltv/emby/embyatv/util/KeyProcessor;->isMusic(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result p1

    const-string v0, "photos"

    .line 715
    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "PhotoAlbum"

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "photos"

    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->containsPhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 716
    :goto_1
    iget-object v3, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/StdGridFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v4, p0, Ltv/emby/embyatv/browsing/StdGridFragment$14;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v4}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1600(Ltv/emby/embyatv/browsing/StdGridFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v3

    .line 718
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/16 v5, 0x8

    const v6, 0x7f100547

    invoke-interface {v4, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 719
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/16 v5, 0x9

    const/4 v6, 0x2

    const v7, 0x7f1005b4

    invoke-interface {v4, v2, v5, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v4, 0xb

    const v5, 0x7f10043f

    invoke-interface {v1, v2, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 724
    :cond_2
    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;

    invoke-direct {v1, p0, p1, v0}, Ltv/emby/embyatv/browsing/StdGridFragment$14$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$14;ZZ)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 805
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
