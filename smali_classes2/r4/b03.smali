.class public final Lr4/b03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/e33;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lr4/e5;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;


# direct methods
.method public constructor <init>(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b03;->a:Lr4/e33;

    iput-object p2, p0, Lr4/b03;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Lr4/b03;->c:Lr4/e5;

    iput-object p4, p0, Lr4/b03;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/b03;->e:Landroid/media/MediaCrypto;

    return-void
.end method

.method public static a(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/media/MediaCrypto;)Lr4/b03;
    .locals 8

    new-instance p3, Lr4/b03;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lr4/b03;-><init>(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object p3
.end method

.method public static b(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lr4/b03;
    .locals 8

    new-instance p4, Lr4/b03;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lr4/b03;-><init>(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object p4
.end method
