.class public final Lr4/ef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public final a:Landroid/media/MediaCodec$CryptoInfo;

.field public final b:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lr4/df;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ef;->a:Landroid/media/MediaCodec$CryptoInfo;

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Lr4/ef;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public static synthetic a(Lr4/ef;II)V
    .locals 0

    iget-object p1, p0, Lr4/ef;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p1, p0, Lr4/ef;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p0, p0, Lr4/ef;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {p1, p0}, Lr4/c0;->a(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
