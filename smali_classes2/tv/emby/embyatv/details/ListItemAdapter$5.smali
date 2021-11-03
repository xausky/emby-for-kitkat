.class Ltv/emby/embyatv/details/ListItemAdapter$5;
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

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 376
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "TvChannel"

    .line 379
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Ltv/emby/embyatv/util/Utils;->play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 383
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 384
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->play(Ljava/util/List;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$5;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100639

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
