.class public Lmediabrowser/apiinteraction/android/AndroidDevice;
.super Ljava/lang/Object;
.source "AndroidDevice.java"

# interfaces
.implements Lmediabrowser/apiinteraction/device/IDevice;


# static fields
.field public static final DIACRITICS_AND_FRIENDS:Ljava/util/regex/Pattern;


# instance fields
.field private context:Landroid/content/Context;

.field private final deviceId:Ljava/lang/String;

.field private final deviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\p{InCombiningDiacriticalMarks}]+"

    .line 168
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmediabrowser/apiinteraction/android/AndroidDevice;->DIACRITICS_AND_FRIENDS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/android/AndroidDevice;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceId:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lmediabrowser/apiinteraction/android/AndroidDevice;->getDeviceNameInternal()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method private getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDeviceNameInternal()Ljava/lang/String;
    .locals 4

    .line 155
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 156
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0, v2}, Lmediabrowser/apiinteraction/android/AndroidDevice;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 163
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stripDiacritics(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 171
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 172
    sget-object v0, Lmediabrowser/apiinteraction/android/AndroidDevice;->DIACRITICS_AND_FRIENDS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 182
    invoke-static {v3}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v4

    sget-object v5, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    if-eq v4, v5, :cond_0

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public GetLocalPhotos()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "bucket_display_name"

    const-string v2, "datetaken"

    const-string v3, "mime_type"

    const-string v4, "title"

    const-string v5, "_display_name"

    const-string v6, "_data"

    .line 63
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v9

    .line 74
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 77
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "bucket_display_name"

    .line 94
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "datetaken"

    .line 97
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_id"

    .line 100
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    .line 103
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_display_name"

    .line 106
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mime_type"

    .line 109
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_data"

    .line 112
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 117
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 120
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 123
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    new-instance v13, Lmediabrowser/model/devices/LocalFileInfo;

    invoke-direct {v13}, Lmediabrowser/model/devices/LocalFileInfo;-><init>()V

    .line 127
    invoke-virtual {v13, v9}, Lmediabrowser/model/devices/LocalFileInfo;->setAlbum(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v13, v12}, Lmediabrowser/model/devices/LocalFileInfo;->setId(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v13, v11}, Lmediabrowser/model/devices/LocalFileInfo;->setMimeType(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v13, v10}, Lmediabrowser/model/devices/LocalFileInfo;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    return-object v1
.end method

.method public GetLocalVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public UploadFile(Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 200
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lmediabrowser/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1, p3, p4}, Lmediabrowser/apiinteraction/ApiClient;->UploadFile(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-interface {p3, p1}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 206
    invoke-interface {p3, p1}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 203
    invoke-interface {p3, p1}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method
