.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

.field private final synthetic f$3:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

.field private final synthetic f$4:Ljava/io/IOException;

.field private final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$2:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$3:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$4:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$2:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$3:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$4:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->lambda$loadError$5(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
