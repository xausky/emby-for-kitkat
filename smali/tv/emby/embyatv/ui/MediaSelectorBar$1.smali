.class Ltv/emby/embyatv/ui/MediaSelectorBar$1;
.super Ljava/lang/Object;
.source "MediaSelectorBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/MediaSelectorBar;->init(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/MediaSelectorBar;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$1;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$1;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$000(Ltv/emby/embyatv/ui/MediaSelectorBar;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 59
    iget-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$1;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-static {p2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$000(Ltv/emby/embyatv/ui/MediaSelectorBar;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p2

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultMediaSourceId(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$1;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-static {p2, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$100(Ltv/emby/embyatv/ui/MediaSelectorBar;Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 65
    iget-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$1;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$000(Ltv/emby/embyatv/ui/MediaSelectorBar;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultMediaSourceId(Ljava/lang/String;)V

    return-void
.end method
