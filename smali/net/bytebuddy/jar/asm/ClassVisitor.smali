.class public abstract Lnet/bytebuddy/jar/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final api:I

.field public cv:Lnet/bytebuddy/jar/asm/ClassVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10a0000

    const/high16 v1, 0x90000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x80000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x70000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported api "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Constants;->a(Ljava/lang/Object;)V

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Records requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_2

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x60000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Module requires ASM6"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestHost requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestMember requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x90000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PermittedSubclasses requires ASM9"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Record requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "TypeAnnotation requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
