.class Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1030
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$UpdateBackgroundTask;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$2800(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateBackground(Ljava/lang/String;)V

    return-void
.end method
