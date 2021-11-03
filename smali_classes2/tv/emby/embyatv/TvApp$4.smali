.class Ltv/emby/embyatv/TvApp$4;
.super Ljava/lang/Object;
.source "TvApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->showSearch(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;Landroid/app/Activity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$4;->this$0:Ltv/emby/embyatv/TvApp;

    iput-object p2, p0, Ltv/emby/embyatv/TvApp$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 467
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$4;->val$activity:Landroid/app/Activity;

    const-string p2, "android.permission.RECORD_AUDIO"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
