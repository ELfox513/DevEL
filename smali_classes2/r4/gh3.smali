.class public final Lr4/gh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/bf3;


# instance fields
.field public final a:I

.field public b:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput v0, p0, Lr4/gh3;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-static {p3, p1}, Lr4/jh;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-static {p3, p1}, Lr4/fh3;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lr4/gh3;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lr4/gh3;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-static {v0}, Lb3/s1;->a(Landroid/media/MediaCodecList;)[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lr4/gh3;->b:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method

.method public final x(I)Landroid/media/MediaCodecInfo;
    .locals 1

    invoke-virtual {p0}, Lr4/gh3;->d()V

    iget-object v0, p0, Lr4/gh3;->b:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zza()I
    .locals 1

    invoke-virtual {p0}, Lr4/gh3;->d()V

    iget-object v0, p0, Lr4/gh3;->b:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method
