.class Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;
.super Ljava/lang/Object;
.source "HomeLayoutSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

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

    .line 139
    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    const/4 p4, 0x1

    iput-boolean p4, p2, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionsChanged:Z

    .line 140
    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    invoke-static {p2, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->access$100(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;Landroid/view/View;)I

    move-result p1

    .line 141
    iget-object p2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p2}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "homesection"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;->this$0:Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;

    iget-object p4, p4, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionOptionValues:[Ljava/lang/String;

    aget-object p3, p4, p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
