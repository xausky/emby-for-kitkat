.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$3;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->handlePlayerError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$3;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 139
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$3;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->finish()V

    return-void
.end method
