.class final Lnet/bytebuddy/jar/asm/FieldWriter;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "SourceFile"


# instance fields
.field private final accessFlags:I

.field private constantValueIndex:I

.field private final descriptorIndex:I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private final nameIndex:I

.field private signatureIndex:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->b(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->a(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public b()I
    .locals 5

    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Attribute;->b(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->b(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public c(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x31

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/high16 v0, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Attribute;->d()I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->constantValueIndex:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_b
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->accessFlags:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lnet/bytebuddy/jar/asm/Attribute;->e(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/Attribute;->f(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_c
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method
