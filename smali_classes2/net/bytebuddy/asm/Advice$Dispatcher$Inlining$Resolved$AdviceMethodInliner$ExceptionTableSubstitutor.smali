.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionTableSubstitutor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

.field private index:I

.field private final substitutions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/jar/asm/Label;",
            "Lnet/bytebuddy/jar/asm/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->substitutions:Ljava/util/Map;

    return-void
.end method

.method private resolve(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->substitutions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private resolve([Lnet/bytebuddy/jar/asm/Label;)[Lnet/bytebuddy/jar/asm/Label;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Label;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    invoke-direct {p0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve([Lnet/bytebuddy/jar/asm/Label;)[Lnet/bytebuddy/jar/asm/Label;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0, p4}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->resolve([Lnet/bytebuddy/jar/asm/Label;)[Lnet/bytebuddy/jar/asm/Label;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 3

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->substitutions:Ljava/util/Map;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object v0, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->labels:Ljava/util/List;

    iget v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->substitutions:Ljava/util/Map;

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object p4, p4, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->labels:Ljava/util/List;

    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->labels:Ljava/util/List;

    iget p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->index:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableSubstitutor;->substitutions:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p2, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->propagateHandler(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method
