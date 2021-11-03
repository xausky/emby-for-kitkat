.class Ltv/emby/embyatv/startup/ConnectActivity$2;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/ConnectActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ConnectActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$2;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/startup/ConnectActivity$2;->this$0:Ltv/emby/embyatv/startup/ConnectActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/startup/ConnectActivity;->finish()V

    return-void
.end method
