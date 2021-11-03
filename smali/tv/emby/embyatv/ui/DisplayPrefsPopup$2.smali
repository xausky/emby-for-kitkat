.class Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;
.super Ljava/lang/Object;
.source "DisplayPrefsPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 73
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 76
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object v1, v1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mChanged:Ljava/lang/Boolean;

    return-void
.end method
