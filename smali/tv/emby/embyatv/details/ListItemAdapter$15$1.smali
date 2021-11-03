.class Ltv/emby/embyatv/details/ListItemAdapter$15$1;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$15;

.field final synthetic val$data:Lmediabrowser/model/dto/UserItemDataDto;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$15;Lmediabrowser/model/dto/UserItemDataDto;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 652
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$15;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->val$data:Lmediabrowser/model/dto/UserItemDataDto;

    iput-object p3, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 655
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->val$data:Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$15;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {p1, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$900(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$15;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15$1;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {p1, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1000(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    :goto_0
    return-void
.end method
