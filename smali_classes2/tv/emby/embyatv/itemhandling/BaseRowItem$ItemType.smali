.class public final enum Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;
.super Ljava/lang/Enum;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/itemhandling/BaseRowItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum LiveTvRecording:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum SearchHint:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum SeriesTimer:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum Server:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field public static final enum User:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 772
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "BaseItem"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    .line 773
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "Person"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    .line 774
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "Server"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Server:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "User"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->User:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "Chapter"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "SearchHint"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SearchHint:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "LiveTvChannel"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "LiveTvRecording"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvRecording:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "GridButton"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "SeriesTimer"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SeriesTimer:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const-string v1, "LiveTvProgram"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const/16 v0, 0xb

    .line 771
    new-array v0, v0, [Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Server:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->User:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SearchHint:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v8

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvRecording:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v9

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v10

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SeriesTimer:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v11

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    aput-object v1, v0, v12

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->$VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;
    .locals 1

    .line 771
    const-class v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;
    .locals 1

    .line 771
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->$VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v0}, [Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-object v0
.end method
