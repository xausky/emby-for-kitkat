.class final Ltv/emby/embyatv/util/Utils$26;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->reportError(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2027
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$26;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2030
    new-instance p1, Ltv/emby/embyatv/util/LogReporter;

    invoke-direct {p1}, Ltv/emby/embyatv/util/LogReporter;-><init>()V

    const-string p2, "User"

    new-instance v0, Ltv/emby/embyatv/util/Utils$26$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/util/Utils$26$1;-><init>(Ltv/emby/embyatv/util/Utils$26;)V

    invoke-virtual {p1, p2, v0}, Ltv/emby/embyatv/util/LogReporter;->sendReport(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
