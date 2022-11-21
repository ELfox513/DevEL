.class public Lnet/bytebuddy/jar/asm/commons/ClassRemapper;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->a(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public createFieldRemapper(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public createMethodRemapper(Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public createModuleRemapper(Lnet/bytebuddy/jar/asm/ModuleVisitor;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public createRecordComponentRemapper(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p6, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v7, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 4

    instance-of v0, p1, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 p3, 0x1

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/4 p2, 0x0

    if-nez p5, :cond_0

    move-object v7, p2

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_0
    move-object v2, p0

    move v3, p1

    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createFieldRemapper(Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInnerClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-super {p0, v0, v2, v1, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 p3, 0x0

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    if-nez p5, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    :goto_0
    move-object v1, p0

    move v2, p1

    invoke-super/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createMethodRemapper(Lnet/bytebuddy/jar/asm/MethodVisitor;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createModuleRemapper(Lnet/bytebuddy/jar/asm/ModuleVisitor;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v2, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-super {p0, v0, p1, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapRecordComponentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createRecordComponentRemapper(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p1}, Lnet/bytebuddy/jar/asm/commons/ClassRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method
