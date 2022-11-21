.class public abstract Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "SourceFile"


# instance fields
.field private triggerAttributes:Z

.field private triggerNestHost:Z

.field private triggerOuterClass:Z


# direct methods
.method public constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    return-void
.end method

.method private considerTriggerAfterAttributes()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onAfterAttributes()V

    :cond_0
    return-void
.end method

.method private considerTriggerNestHost()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onNestHost()V

    :cond_0
    return-void
.end method

.method private considerTriggerOuterClass()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onOuterType()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAfterAttributes()V
    .locals 0

    return-void
.end method

.method public onNestHost()V
    .locals 0

    return-void
.end method

.method public onOuterType()V
    .locals 0

    return-void
.end method

.method public onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public onVisitEnd()V
    .locals 0

    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onVisitNestHost(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public onVisitNestMember(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVisitPermittedSubclass(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    return-void
.end method

.method public onVisitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitEnd()V

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final visitPermittedSubclass(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitPermittedSubclass(Ljava/lang/String;)V

    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
