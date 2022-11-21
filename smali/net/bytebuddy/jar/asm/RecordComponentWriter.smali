.class final Lnet/bytebuddy/jar/asm/RecordComponentWriter;
.super Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.source "SourceFile"


# instance fields
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
.method public constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->nameIndex:I

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->descriptorIndex:I

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->a(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public b()I
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Attribute;->b(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->b(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public c(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 9

    iget v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->nameIndex:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->descriptorIndex:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Attribute;->d()I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lnet/bytebuddy/jar/asm/Attribute;->e(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/Attribute;->f(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_6
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method
