.class Ltv/emby/embyatv/browsing/StdGridFragment$16;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->addTools()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 820
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$16;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 823
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$16;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPopup:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$16;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$16;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$16;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/StdGridFragment;->mDisplayPrefsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->show(Lmediabrowser/model/entities/DisplayPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
