.class public Ltv/emby/embyatv/model/TabDef;
.super Ljava/lang/Object;
.source "TabDef.java"


# instance fields
.field private fragment:Landroid/app/Fragment;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltv/emby/embyatv/model/TabDef;->label:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Ltv/emby/embyatv/model/TabDef;->fragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .line 21
    iget-object v0, p0, Ltv/emby/embyatv/model/TabDef;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/model/TabDef;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltv/emby/embyatv/model/TabDef;->fragment:Landroid/app/Fragment;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/model/TabDef;->label:Ljava/lang/String;

    return-void
.end method
