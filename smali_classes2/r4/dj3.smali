.class public final Lr4/dj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/h93;


# static fields
.field public static final f:[B


# instance fields
.field public final a:Lr4/gj3;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Lr4/bj3;

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lr4/dj3;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILr4/bj3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/hj3;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lr4/gj3;

    invoke-direct {v0, p1}, Lr4/gj3;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lr4/dj3;->a:Lr4/gj3;

    iput-object p2, p0, Lr4/dj3;->c:[B

    iput-object p3, p0, Lr4/dj3;->b:Ljava/lang/String;

    iput p4, p0, Lr4/dj3;->e:I

    iput-object p5, p0, Lr4/dj3;->d:Lr4/bj3;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6

    iget-object v0, p0, Lr4/dj3;->a:Lr4/gj3;

    iget-object v1, p0, Lr4/dj3;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/dj3;->c:[B

    iget-object v3, p0, Lr4/dj3;->d:Lr4/bj3;

    invoke-interface {v3}, Lr4/bj3;->zza()I

    move-result v4

    iget v5, p0, Lr4/dj3;->e:I

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lr4/gj3;->a(Ljava/lang/String;[B[BII)Lr4/fj3;

    move-result-object p2

    iget-object v0, p0, Lr4/dj3;->d:Lr4/bj3;

    invoke-virtual {p2}, Lr4/fj3;->b()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/bj3;->a([B)Lr4/qc3;

    move-result-object v0

    sget-object v1, Lr4/dj3;->f:[B

    invoke-virtual {v0, p1, v1}, Lr4/qc3;->a([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lr4/fj3;->a()[B

    move-result-object p2

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
