.class public final Lr4/lb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/c93;


# static fields
.field public static final c:[B


# instance fields
.field public final a:Lr4/zg3;

.field public final b:Lr4/c93;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lr4/lb3;->c:[B

    return-void
.end method

.method public constructor <init>(Lr4/zg3;Lr4/c93;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lb3;->a:Lr4/zg3;

    iput-object p2, p0, Lr4/lb3;->b:Lr4/c93;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    iget-object v0, p0, Lr4/lb3;->a:Lr4/zg3;

    invoke-static {v0}, Lr4/ja3;->h(Lr4/zg3;)Lr4/ao3;

    move-result-object v0

    invoke-interface {v0}, Lr4/ao3;->t()[B

    move-result-object v0

    iget-object v1, p0, Lr4/lb3;->b:Lr4/c93;

    sget-object v2, Lr4/lb3;->c:[B

    invoke-interface {v1, v0, v2}, Lr4/c93;->a([B[B)[B

    move-result-object v1

    iget-object v2, p0, Lr4/lb3;->a:Lr4/zg3;

    invoke-virtual {v2}, Lr4/zg3;->C()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lr4/c93;

    invoke-static {v2, v0, v3}, Lr4/ja3;->j(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/c93;

    invoke-interface {v0, p1, p2}, Lr4/c93;->a([B[B)[B

    move-result-object p1

    array-length p2, v1

    add-int/lit8 v0, p2, 0x4

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
