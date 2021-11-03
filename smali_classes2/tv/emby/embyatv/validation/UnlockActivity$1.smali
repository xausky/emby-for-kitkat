.class Ltv/emby/embyatv/validation/UnlockActivity$1;
.super Ljava/lang/Object;
.source "UnlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/validation/UnlockActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$1;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$1;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/validation/UnlockActivity;->finish()V

    return-void
.end method
