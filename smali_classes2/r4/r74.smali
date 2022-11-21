.class public final Lr4/r74;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lr4/n74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r74;->a:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lr4/r74;->b:J

    iput-wide p4, p0, Lr4/r74;->c:J

    iput-wide p6, p0, Lr4/r74;->d:J

    iput-object p8, p0, Lr4/r74;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static synthetic a(Lr4/r74;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lr4/r74;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic b(Lr4/r74;)J
    .locals 2

    iget-wide v0, p0, Lr4/r74;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lr4/r74;)J
    .locals 2

    iget-wide v0, p0, Lr4/r74;->c:J

    return-wide v0
.end method

.method public static synthetic d(Lr4/r74;)J
    .locals 2

    iget-wide v0, p0, Lr4/r74;->d:J

    return-wide v0
.end method

.method public static synthetic e(Lr4/r74;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lr4/r74;->e:Ljava/nio/ByteBuffer;

    return-object p0
.end method
