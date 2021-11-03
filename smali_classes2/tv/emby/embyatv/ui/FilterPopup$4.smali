.class Ltv/emby/embyatv/ui/FilterPopup$4;
.super Ljava/lang/Object;
.source "FilterPopup.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/FilterPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup;)V
    .locals 0

    .line 92
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$4;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 95
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$4;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ltv/emby/embyatv/ui/FilterPopup;->access$002(Ltv/emby/embyatv/ui/FilterPopup;Z)Z

    return-void
.end method
