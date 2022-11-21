.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodExtractor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final exceptionName:[Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final exceptionTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private firstLabel:Lnet/bytebuddy/jar/asm/Label;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final internalName:Ljava/lang/String;

.field private invisibleParameterShift:I

.field private final legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

.field private final modifiers:I

.field private final parameterAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final receiverTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final returnTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private visibleParameterShift:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->internalName:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->genericSignature:Ljava/lang/String;

    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionName:[Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;-><init>([Lnet/bytebuddy/jar/asm/Type;)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p2, p1

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->visibleParameterShift:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p2, p1

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->invisibleParameterShift:I

    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForArrayType;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForArrayType;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->b(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;

    move-result-object v1

    new-instance v15, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->internalName:Ljava/lang/String;

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->genericSignature:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionName:[Ljava/lang/String;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    iget-object v12, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    iget-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    move-object/from16 v16, v2

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    move-object/from16 v18, v1

    iget v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->resolve(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    :goto_1
    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-object/from16 v17, v2

    move-object v2, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 0

    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object p2, p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    iget-object p2, p2, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {p2}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->isExtended()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    if-ne p4, p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    invoke-virtual {p2, p6, p1}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->register(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 7

    new-instance v6, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    if-eqz p3, :cond_0

    iget p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->visibleParameterShift:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->invisibleParameterShift:I

    :goto_0
    add-int v3, p1, p3

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    new-instance v5, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object p1, v1, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v5, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;ILjava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v6
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    new-instance p4, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {p4, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type reference on method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getExceptionIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getFormalParameterIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    return-object p1

    :pswitch_5
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v3

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;IILjava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    :goto_0
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v1, p4, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v0, v1, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p4, p1, v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
