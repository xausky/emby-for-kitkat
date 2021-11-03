.class Ltv/emby/embyatv/ui/DisplayPrefsPopup$5;
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

    .line 131
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$5;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

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

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$5;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "DefaultView"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
