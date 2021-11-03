.class Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

.field final synthetic val$this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Ltv/emby/embyatv/details/ListItemAdapter;)V
    .locals 0

    .line 841
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;->val$this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 844
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1200(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1200(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;->onRowSelected(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    :cond_0
    return-void
.end method
