.class Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;
.super Ljava/lang/Object;
.source "ChapterThumbAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/ChapterThumbAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ChapterThumbAdapter;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    iput p2, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$100(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$100(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->this$0:Ltv/emby/embyatv/ui/ChapterThumbAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter;->access$200(Ltv/emby/embyatv/ui/ChapterThumbAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/ui/ChapterThumbAdapter$3;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/ChapterInfoDto;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ChapterThumbAdapter$ItemClickedListener;->onItemClicked(Lmediabrowser/model/dto/ChapterInfoDto;)V

    :cond_0
    return-void
.end method
