.class Ltv/emby/embyatv/startup/ExpiredActivity$1;
.super Ljava/lang/Object;
.source "ExpiredActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/ExpiredActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/ExpiredActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/ExpiredActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltv/emby/embyatv/startup/ExpiredActivity$1;->this$0:Ltv/emby/embyatv/startup/ExpiredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Ltv/emby/embyatv/startup/ExpiredActivity$1;->this$0:Ltv/emby/embyatv/startup/ExpiredActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/startup/ExpiredActivity;->finish()V

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
