.class Ltv/emby/embyatv/details/ListItemAdapter$4;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;)V
    .locals 0

    .line 360
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 363
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 364
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$400(Ltv/emby/embyatv/details/ListItemAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 365
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$500(Ltv/emby/embyatv/details/ListItemAdapter;Ljava/util/List;)I

    move-result v0

    .line 366
    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->play(Ljava/util/List;I)V

    goto :goto_1

    .line 368
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$4;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100639

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method
