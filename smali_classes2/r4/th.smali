.class public final Lr4/th;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final a:I

.field public b:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/th;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p1, "secure-playback"

    invoke-static {p2, p1}, Lr4/jh;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/th;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lr4/th;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-static {v0}, Lb3/s1;->a(Landroid/media/MediaCodecList;)[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lr4/th;->b:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method

.method public final x(I)Landroid/media/MediaCodecInfo;
    .locals 1

    invoke-virtual {p0}, Lr4/th;->c()V

    iget-object v0, p0, Lr4/th;->b:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zza()I
    .locals 1

    invoke-virtual {p0}, Lr4/th;->c()V

    iget-object v0, p0, Lr4/th;->b:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method
