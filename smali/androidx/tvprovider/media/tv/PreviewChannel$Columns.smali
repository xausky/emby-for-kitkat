.class public Landroidx/tvprovider/media/tv/PreviewChannel$Columns;
.super Ljava/lang/Object;
.source "PreviewChannel.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/PreviewChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final COL_APP_LINK_INTENT_URI:I = 0x5

.field public static final COL_DESCRIPTION:I = 0x4

.field public static final COL_DISPLAY_NAME:I = 0x3

.field public static final COL_ID:I = 0x0

.field public static final COL_INTERNAL_PROVIDER_DATA:I = 0x7

.field public static final COL_INTERNAL_PROVIDER_FLAG1:I = 0x8

.field public static final COL_INTERNAL_PROVIDER_FLAG2:I = 0x9

.field public static final COL_INTERNAL_PROVIDER_FLAG3:I = 0xa

.field public static final COL_INTERNAL_PROVIDER_FLAG4:I = 0xb

.field public static final COL_INTERNAL_PROVIDER_ID:I = 0x6

.field public static final COL_PACKAGE_NAME:I = 0x1

.field public static final COL_TYPE:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "_id"

    const-string v1, "package_name"

    const-string v2, "type"

    const-string v3, "display_name"

    const-string v4, "description"

    const-string v5, "app_link_intent_uri"

    const-string v6, "internal_provider_id"

    const-string v7, "internal_provider_data"

    const-string v8, "internal_provider_flag1"

    const-string v9, "internal_provider_flag2"

    const-string v10, "internal_provider_flag3"

    const-string v11, "internal_provider_flag4"

    .line 306
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/PreviewChannel$Columns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
