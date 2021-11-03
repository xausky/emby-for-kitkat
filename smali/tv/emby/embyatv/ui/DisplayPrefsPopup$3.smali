.class Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;
.super Ljava/lang/Object;
.source "DisplayPrefsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/DisplayPrefsPopup;-><init>(Landroid/app/Activity;Landroid/view/View;ZZLmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V
    .locals 0

    .line 90
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

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

    .line 93
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object p4, p4, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "PosterSize"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mChanged:Ljava/lang/Boolean;

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
