.class Ltv/emby/embyatv/util/DelayedMessage$1;
.super Ljava/lang/Object;
.source "DelayedMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/DelayedMessage;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/DelayedMessage;

.field final synthetic val$activity:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/DelayedMessage;Landroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->this$0:Ltv/emby/embyatv/util/DelayedMessage;

    iput-object p2, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->val$activity:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->this$0:Ltv/emby/embyatv/util/DelayedMessage;

    iget-object v1, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->val$activity:Landroid/content/Context;

    iget-object v2, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->this$0:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-static {v2}, Ltv/emby/embyatv/util/DelayedMessage;->access$100(Ltv/emby/embyatv/util/DelayedMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/util/DelayedMessage$1;->this$0:Ltv/emby/embyatv/util/DelayedMessage;

    invoke-static {v3}, Ltv/emby/embyatv/util/DelayedMessage;->access$200(Ltv/emby/embyatv/util/DelayedMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/DelayedMessage;->access$002(Ltv/emby/embyatv/util/DelayedMessage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
