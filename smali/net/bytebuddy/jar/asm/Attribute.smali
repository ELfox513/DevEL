.class public Lnet/bytebuddy/jar/asm/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/jar/asm/Attribute$Set;
    }
.end annotation


# instance fields
.field public a:Lnet/bytebuddy/jar/asm/Attribute;

.field private content:[B

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method public static b(Lnet/bytebuddy/jar/asm/SymbolTable;II)I
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "Signature"

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_2
    return v0
.end method

.method public static e(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v0

    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lnet/bytebuddy/jar/asm/SymbolTable;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->c(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result p1

    return p1
.end method

.method public final c(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I
    .locals 9

    iget-object v6, p1, Lnet/bytebuddy/jar/asm/SymbolTable;->a:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    :goto_0
    if-eqz v8, :cond_0

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-object v0, v8

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    iget-object v8, v8, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return v7
.end method

.method public final d()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final f(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/Attribute;->g(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    return-void
.end method

.method public final g(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 8

    iget-object v6, p1, Lnet/bytebuddy/jar/asm/SymbolTable;->a:Lnet/bytebuddy/jar/asm/ClassWriter;

    move-object v7, p0

    :goto_0
    if-eqz v7, :cond_0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, v7, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p6, v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLabels()[Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Label;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 0

    new-instance p4, Lnet/bytebuddy/jar/asm/Attribute;

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {p4, p5}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    new-array p5, p3, [B

    iput-object p5, p4, Lnet/bytebuddy/jar/asm/Attribute;->content:[B

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/ClassReader;->a:[B

    const/4 p6, 0x0

    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method public write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 0

    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Attribute;->content:[B

    invoke-direct {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>([B)V

    return-object p1
.end method
