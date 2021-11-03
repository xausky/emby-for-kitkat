.class Ltv/emby/embyatv/ui/MediaSelectorBar$2;
.super Ljava/lang/Object;
.source "MediaSelectorBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/MediaSelectorBar;->createAudioAndSubSelectors(Lmediabrowser/model/dto/MediaSourceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

.field final synthetic val$audio:Ljava/util/List;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/MediaSelectorBar;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$2;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    iput-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$2;->val$audio:Ljava/util/List;

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

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$2;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    invoke-static {p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$000(Ltv/emby/embyatv/ui/MediaSelectorBar;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$2;->this$0:Ltv/emby/embyatv/ui/MediaSelectorBar;

    iget-object p4, p0, Ltv/emby/embyatv/ui/MediaSelectorBar$2;->val$audio:Ljava/util/List;

    invoke-static {p2, p4, p3}, Ltv/emby/embyatv/ui/MediaSelectorBar;->access$200(Ltv/emby/embyatv/ui/MediaSelectorBar;Ljava/util/List;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->setDefaultAudioNdx(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
