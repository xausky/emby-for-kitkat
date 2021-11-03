.class Ltv/emby/embyatv/ui/NumberSpinner$1;
.super Ljava/lang/Object;
.source "NumberSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/NumberSpinner;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/NumberSpinner;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/NumberSpinner;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltv/emby/embyatv/ui/NumberSpinner$1;->this$0:Ltv/emby/embyatv/ui/NumberSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 44
    iget-object p1, p0, Ltv/emby/embyatv/ui/NumberSpinner$1;->this$0:Ltv/emby/embyatv/ui/NumberSpinner;

    iget-object v0, p0, Ltv/emby/embyatv/ui/NumberSpinner$1;->this$0:Ltv/emby/embyatv/ui/NumberSpinner;

    iget-wide v0, v0, Ltv/emby/embyatv/ui/NumberSpinner;->mValue:J

    iget-object v2, p0, Ltv/emby/embyatv/ui/NumberSpinner$1;->this$0:Ltv/emby/embyatv/ui/NumberSpinner;

    iget-wide v2, v2, Ltv/emby/embyatv/ui/NumberSpinner;->mIncrement:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/ui/NumberSpinner;->setValue(J)V

    return-void
.end method
