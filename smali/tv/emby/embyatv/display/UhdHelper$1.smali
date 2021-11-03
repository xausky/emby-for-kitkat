.class Ltv/emby/embyatv/display/UhdHelper$1;
.super Ljava/lang/Object;
.source "UhdHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/display/UhdHelper;->setPreferredDisplayModeId(Landroid/view/Window;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/display/UhdHelper;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/display/UhdHelper;)V
    .locals 0

    .line 393
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$1;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 404
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged. id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$1;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget-object v2, v2, Ltv/emby/embyatv/display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 405
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$1;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$800(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$WorkHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
