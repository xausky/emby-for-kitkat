.class synthetic Ltv/emby/embyatv/startup/SelectServerFragment$3;
.super Ljava/lang/Object;
.source "SelectServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/startup/SelectServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$tv$emby$embyatv$base$CustomMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    invoke-static {}, Ltv/emby/embyatv/base/CustomMessage;->values()[Ltv/emby/embyatv/base/CustomMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/startup/SelectServerFragment$3;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    :try_start_0
    sget-object v0, Ltv/emby/embyatv/startup/SelectServerFragment$3;->$SwitchMap$tv$emby$embyatv$base$CustomMessage:[I

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v1}, Ltv/emby/embyatv/base/CustomMessage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
