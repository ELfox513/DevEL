.class public final Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;
.super Lnet/bytebuddy/jar/asm/Attribute;
.source "SourceFile"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "ModuleHashes"

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->hashes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 7

    invoke-virtual {p1, p2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p5

    add-int/lit8 p2, p2, 0x2

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6, p5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_1

    invoke-virtual {p1, p2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p2, p2, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    invoke-direct {p1, p3, p6, v0}, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 3

    new-instance p2, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p2}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2, p4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->hashes:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v0, v1, p4, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method
