.class Ltv/emby/embyatv/browsing/StdGridFragment$20$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$20;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdGridFragment$20;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$20;)V
    .locals 0

    .line 922
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 925
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$20;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$20$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$20;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$20;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
