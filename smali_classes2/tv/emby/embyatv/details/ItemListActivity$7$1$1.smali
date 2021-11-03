.class Ltv/emby/embyatv/details/ItemListActivity$7$1$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$7$1;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$7$1;)V
    .locals 0

    .line 363
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 366
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget v0, v0, Ltv/emby/embyatv/details/ItemListActivity$7;->val$ndx:I

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object v1, v1, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object v1, v1, Ltv/emby/embyatv/details/ItemListActivity$7;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget v0, v0, Ltv/emby/embyatv/details/ItemListActivity$7;->val$ndx:I

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemChanged(I)V

    .line 368
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$7$1$1;->this$2:Ltv/emby/embyatv/details/ItemListActivity$7$1;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$7;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$7;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    const v0, 0x7f100650

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
