.class Ltv/emby/embyatv/details/ListItemAdapter$11;
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

.field final synthetic val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;)V
    .locals 0

    .line 527
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 531
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$800(Ltv/emby/embyatv/details/ListItemAdapter;)Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$11;->val$holder:Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    iget-object v2, v2, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, v2}, Ltv/emby/embyatv/details/ListItemAdapter;->showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Landroid/view/View;)V

    return-void
.end method
