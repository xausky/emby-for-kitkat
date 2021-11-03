.class Ltv/emby/embyatv/details/ListItemAdapter$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;

.field final synthetic val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;)V
    .locals 0

    .line 187
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$1;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$1;->val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 190
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$1;->val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    iget-object v0, v0, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
