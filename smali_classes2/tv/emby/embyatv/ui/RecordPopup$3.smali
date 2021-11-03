.class Ltv/emby/embyatv/ui/RecordPopup$3;
.super Ljava/lang/Object;
.source "RecordPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/RecordPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$3;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

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

    .line 126
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$3;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/model/CombinedTimerInfo;->setKeepUpTo(I)V

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
