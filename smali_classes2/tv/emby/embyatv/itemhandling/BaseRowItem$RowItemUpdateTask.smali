.class Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;
.super Landroid/os/AsyncTask;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/itemhandling/BaseRowItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowItemUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ltv/emby/embyatv/itemhandling/BaseRowItem;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/itemhandling/BaseRowItem$1;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p1, [Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;->doInBackground([Ltv/emby/embyatv/itemhandling/BaseRowItem;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ltv/emby/embyatv/itemhandling/BaseRowItem;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    .line 187
    aget-object p1, p1, v0

    .line 188
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$100(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
