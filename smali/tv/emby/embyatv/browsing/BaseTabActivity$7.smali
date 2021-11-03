.class Ltv/emby/embyatv/browsing/BaseTabActivity$7;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;->FocusedTabChanged(Ltv/emby/embyatv/ui/TabText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 445
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$7;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 448
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$7;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->showScrollIndicators()V

    return-void
.end method
