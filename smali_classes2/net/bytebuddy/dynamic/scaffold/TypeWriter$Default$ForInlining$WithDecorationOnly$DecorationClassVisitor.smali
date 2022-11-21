.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;
.super Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecorationClassVisitor"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Field access order is implied by ASM."
    value = {
        "UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

.field private final contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field

.field private final readerFlags:I

.field private final writerFlags:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    iput p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->writerFlags:I

    iput p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->readerFlags:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 0

    return-void
.end method

.method public onAfterAttributes()V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method public onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->c()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onVisitEnd()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, p0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->c()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v5

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v6, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v7, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v3, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v6, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v7, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object v8, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget v9, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->writerFlags:I

    iget v10, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->readerFlags:I

    invoke-interface/range {v2 .. v10}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v11

    iput-object v11, v0, Lnet/bytebuddy/jar/asm/ClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
