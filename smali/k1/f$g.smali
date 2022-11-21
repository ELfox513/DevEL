.class public final Lk1/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;
.implements Ll1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/nio/ByteBuffer;

.field public final c:I

.field public final synthetic d:Lk1/f;


# direct methods
.method public constructor <init>(Lk1/f;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk1/f$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lk1/f$g;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lk1/f;Ljava/lang/String;Ljava/nio/ByteBuffer;Lk1/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk1/f$g;-><init>(Lk1/f;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic m(Lk1/f$g;)Lk1/c;
    .locals 0

    invoke-virtual {p0}, Lk1/f$g;->z()Lk1/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lk1/f$g;)Lk1/e;
    .locals 0

    invoke-virtual {p0}, Lk1/f$g;->B()Lk1/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lk1/d;
    .locals 12

    invoke-virtual {p0}, Lk1/f$g;->t()I

    move-result v2

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v3

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v4

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v5

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v6

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v7

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v8

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v9

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v10

    new-instance v11, Lk1/d;

    iget-object v1, p0, Lk1/f$g;->d:Lk1/f;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lk1/d;-><init>(Lk1/f;IIIIIIIII)V

    return-object v11
.end method

.method public final B()Lk1/e;
    .locals 9

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v1

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v2

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v3

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v4

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v5

    invoke-virtual {p0, v5}, Lk1/f$g;->L(I)[S

    move-result-object v5

    if-lez v0, :cond_1

    array-length v6, v5

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lk1/f$g;->K()S

    :cond_0
    iget-object v6, p0, Lk1/f$g;->d:Lk1/f;

    iget-object v7, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x8

    invoke-virtual {p0, v7}, Lk1/f$g;->T(I)V

    invoke-virtual {p0}, Lk1/f$g;->y()[Lk1/e$a;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lk1/f$g;->O(I[Lk1/e$a;)[Lk1/e$b;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v6, v0, [Lk1/e$b;

    new-array v0, v0, [Lk1/e$a;

    move-object v7, v0

    :goto_0
    new-instance v8, Lk1/e;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lk1/e;-><init>(IIII[S[Lk1/e$b;[Lk1/e$a;)V

    return-object v8
.end method

.method public C()Lk1/j;
    .locals 3

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    new-instance v1, Lk1/l;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lk1/l;-><init>(Ll1/b;I)V

    invoke-virtual {v1}, Lk1/l;->w()V

    new-instance v1, Lk1/j;

    invoke-virtual {p0, v0}, Lk1/f$g;->s(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lk1/j;-><init>([B)V

    return-object v1
.end method

.method public D()Lk1/m;
    .locals 5

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v1

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v2

    new-instance v3, Lk1/m;

    iget-object v4, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {v3, v4, v0, v1, v2}, Lk1/m;-><init>(Lk1/f;III)V

    return-object v3
.end method

.method public final E(I)[Lk1/c$a;
    .locals 5

    new-array v0, p1, [Lk1/c$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v3

    new-instance v4, Lk1/c$a;

    invoke-direct {v4, v2, v3}, Lk1/c$a;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public G()Lk1/o;
    .locals 7

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v0

    invoke-static {v0}, Lk1/o$b;->d(I)Lk1/o$b;

    move-result-object v3

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v4

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v5

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v6

    new-instance v0, Lk1/o;

    iget-object v2, p0, Lk1/f$g;->d:Lk1/f;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lk1/o;-><init>(Lk1/f;Lk1/o$b;III)V

    return-object v0
.end method

.method public H()Lk1/p;
    .locals 5

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v1

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v2

    new-instance v3, Lk1/p;

    iget-object v4, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {v3, v4, v0, v1, v2}, Lk1/p;-><init>(Lk1/f;III)V

    return-object v3
.end method

.method public final I(I)[Lk1/c$b;
    .locals 6

    new-array v0, p1, [Lk1/c$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v3

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v4

    new-instance v5, Lk1/c$b;

    invoke-direct {v5, v2, v3, v4}, Lk1/c$b;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public J()Lk1/r;
    .locals 5

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v1

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v2

    new-instance v3, Lk1/r;

    iget-object v4, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {v3, v4, v0, v1, v2}, Lk1/r;-><init>(Lk1/f;III)V

    return-object v3
.end method

.method public K()S
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public L(I)[S
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lk1/f;->j:[S

    return-object p1

    :cond_0
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0}, Lk1/f$g;->K()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public M()I
    .locals 1

    invoke-static {p0}, Lk1/n;->a(Ll1/b;)I

    move-result v0

    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v0

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v0

    new-array v3, v0, [C

    invoke-static {p0, v3}, Lk1/q;->b(Ll1/b;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v3

    :cond_0
    :try_start_1
    new-instance v4, Lk1/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Declared length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match decoded length of "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Lk1/g;

    invoke-direct {v3, v0}, Lk1/g;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v3, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public final O(I[Lk1/e$a;)[Lk1/e$b;
    .locals 6

    new-array v0, p1, [Lk1/e$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v2

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v3

    invoke-virtual {p0}, Lk1/f$g;->S()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Lk1/f$g;->r([Lk1/e$a;I)I

    move-result v4

    new-instance v5, Lk1/e$b;

    invoke-direct {v5, v2, v3, v4}, Lk1/e$b;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public P()Lk1/t;
    .locals 3

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v0

    invoke-virtual {p0, v0}, Lk1/f$g;->L(I)[S

    move-result-object v0

    invoke-virtual {p0}, Lk1/f$g;->o()V

    new-instance v1, Lk1/t;

    iget-object v2, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {v1, v2, v0}, Lk1/t;-><init>(Lk1/f;[S)V

    return-object v1
.end method

.method public Q()I
    .locals 1

    invoke-static {p0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    return v0
.end method

.method public R()I
    .locals 1

    invoke-static {p0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public S()I
    .locals 2

    invoke-virtual {p0}, Lk1/f$g;->K()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public T(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public U()I
    .locals 2

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lk1/f$g;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public V([S)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lk1/f$g;->W(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public W(S)V
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public X(I)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lk1/n;->d(Ll1/c;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lk1/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Section limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeded by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/f$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lk1/f$g;->a0(I)V

    invoke-static {p1}, Lk1/q;->d(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lk1/f$g;->write([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk1/f$g;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public Z(Lk1/t;)V
    .locals 3

    invoke-virtual {p1}, Lk1/t;->d()[S

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lk1/f$g;->writeInt(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lk1/f$g;->W(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk1/f$g;->p()V

    return-void
.end method

.method public a0(I)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lk1/n;->e(Ll1/c;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lk1/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Section limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeded by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/f$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lk1/f$g;->a0(I)V

    return-void
.end method

.method public c0(I)V
    .locals 3

    int-to-short v0, p1

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lk1/f$g;->W(S)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an unsigned short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public p()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r([Lk1/e$a;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lk1/e$a;->c()I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final s(I)[B
    .locals 2

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public u()Lk1/a;
    .locals 5

    invoke-virtual {p0}, Lk1/f$g;->readByte()B

    move-result v0

    iget-object v1, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    new-instance v2, Lk1/l;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lk1/l;-><init>(Ll1/b;I)V

    invoke-virtual {v2}, Lk1/l;->w()V

    new-instance v2, Lk1/a;

    iget-object v3, p0, Lk1/f$g;->d:Lk1/f;

    new-instance v4, Lk1/j;

    invoke-virtual {p0, v1}, Lk1/f$g;->s(I)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lk1/j;-><init>([B)V

    invoke-direct {v2, v3, v0, v4}, Lk1/a;-><init>(Lk1/f;BLk1/j;)V

    return-object v2
.end method

.method public v(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public w()Lk1/b;
    .locals 3

    invoke-virtual {p0}, Lk1/f$g;->F()I

    move-result v0

    new-instance v1, Lk1/b;

    iget-object v2, p0, Lk1/f$g;->d:Lk1/f;

    invoke-direct {v1, v2, v0}, Lk1/b;-><init>(Lk1/f;I)V

    return-object v1
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final x(I)Lk1/e$a;
    .locals 6

    invoke-virtual {p0}, Lk1/f$g;->M()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v5

    aput v5, v2, v4

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    new-instance v1, Lk1/e$a;

    invoke-direct {v1, v2, v3, v0, p1}, Lk1/e$a;-><init>([I[III)V

    return-object v1
.end method

.method public final y()[Lk1/e$a;
    .locals 5

    iget-object v0, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v1

    new-array v2, v1, [Lk1/e$a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lk1/f$g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lk1/f$g;->x(I)Lk1/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final z()Lk1/c;
    .locals 5

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v0

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v1

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v2

    invoke-virtual {p0}, Lk1/f$g;->Q()I

    move-result v3

    invoke-virtual {p0, v0}, Lk1/f$g;->E(I)[Lk1/c$a;

    move-result-object v0

    invoke-virtual {p0, v1}, Lk1/f$g;->E(I)[Lk1/c$a;

    move-result-object v1

    invoke-virtual {p0, v2}, Lk1/f$g;->I(I)[Lk1/c$b;

    move-result-object v2

    invoke-virtual {p0, v3}, Lk1/f$g;->I(I)[Lk1/c$b;

    move-result-object v3

    new-instance v4, Lk1/c;

    invoke-direct {v4, v0, v1, v2, v3}, Lk1/c;-><init>([Lk1/c$a;[Lk1/c$a;[Lk1/c$b;[Lk1/c$b;)V

    return-object v4
.end method
