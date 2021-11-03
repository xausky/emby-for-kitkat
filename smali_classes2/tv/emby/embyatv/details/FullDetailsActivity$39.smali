.class Ltv/emby/embyatv/details/FullDetailsActivity$39;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1672
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1675
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1690
    :sswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3500(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return v0

    .line 1684
    :sswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3800(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return v0

    .line 1696
    :sswitch_2
    new-instance p1, Ltv/emby/embyatv/ui/EditSubPopup;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Ltv/emby/embyatv/ui/EditSubPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/EditSubPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V

    return v0

    .line 1687
    :sswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3400(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return v0

    .line 1693
    :sswitch_4
    new-instance p1, Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V

    return v0

    .line 1681
    :sswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3100(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return v0

    .line 1678
    :sswitch_6
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$39;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3300(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a004a -> :sswitch_6
        0x7f0a004b -> :sswitch_5
        0x7f0a004d -> :sswitch_4
        0x7f0a00cc -> :sswitch_3
        0x7f0a00e9 -> :sswitch_2
        0x7f0a0131 -> :sswitch_1
        0x7f0a0252 -> :sswitch_0
        0x7f0a0253 -> :sswitch_6
    .end sparse-switch
.end method
