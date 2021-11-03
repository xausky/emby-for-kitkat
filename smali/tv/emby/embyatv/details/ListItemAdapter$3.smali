.class Ltv/emby/embyatv/details/ListItemAdapter$3;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 210
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$200(Ltv/emby/embyatv/details/ListItemAdapter;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$202(Ltv/emby/embyatv/details/ListItemAdapter;Z)Z

    .line 214
    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->isFavoriteOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080171

    goto :goto_0

    :cond_0
    const v0, 0x7f0801b9

    :goto_0
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setImageResource(I)V

    .line 215
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$100(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/model/GenericEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$3;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$100(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/model/GenericEvent;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/GenericEvent;->triggered()V

    :cond_1
    return-void
.end method
