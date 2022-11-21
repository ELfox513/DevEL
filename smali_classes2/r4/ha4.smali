.class public final Lr4/ha4;
.super Lr4/dr3;
.source "SourceFile"


# instance fields
.field public A:D

.field public B:F

.field public C:Lr4/nr3;

.field public D:J

.field public w:Ljava/util/Date;

.field public x:Ljava/util/Date;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "mvhd"

    invoke-direct {p0, v0}, Lr4/dr3;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lr4/ha4;->A:D

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr4/ha4;->B:F

    sget-object v0, Lr4/nr3;->j:Lr4/nr3;

    iput-object v0, p0, Lr4/ha4;->C:Lr4/nr3;

    return-void
.end method


# virtual methods
.method public final d(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p0, p1}, Lr4/dr3;->h(Ljava/nio/ByteBuffer;)J

    invoke-virtual {p0}, Lr4/dr3;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lr4/da4;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lr4/ir3;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lr4/ha4;->w:Ljava/util/Date;

    invoke-static {p1}, Lr4/da4;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lr4/ir3;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lr4/ha4;->x:Ljava/util/Date;

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/ha4;->y:J

    invoke-static {p1}, Lr4/da4;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/ha4;->z:J

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lr4/ir3;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lr4/ha4;->w:Ljava/util/Date;

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lr4/ir3;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lr4/ha4;->x:Ljava/util/Date;

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/ha4;->y:J

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/ha4;->z:J

    :goto_0
    invoke-static {p1}, Lr4/da4;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lr4/ha4;->A:D

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-short v2, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    iput v0, p0, Lr4/ha4;->B:F

    invoke-static {p1}, Lr4/da4;->b(Ljava/nio/ByteBuffer;)I

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lr4/nr3;->a(Ljava/nio/ByteBuffer;)Lr4/nr3;

    move-result-object v0

    iput-object v0, p0, Lr4/ha4;->C:Lr4/nr3;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-static {p1}, Lr4/da4;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/ha4;->D:J

    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lr4/ha4;->y:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lr4/ha4;->z:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieHeaderBox[creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/ha4;->w:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";modificationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/ha4;->x:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";timescale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/ha4;->y:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/ha4;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/ha4;->A:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr4/ha4;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/ha4;->C:Lr4/nr3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";nextTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lr4/ha4;->D:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
