.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatchingVisitor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

.field private final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFlags:I

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final writerFlags:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p4, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p5, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p6, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->methods:Ljava/util/Map;

    iput p7, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->writerFlags:I

    iput p8, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->readerFlags:I

    return-void
.end method


# virtual methods
.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 8
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

    iget-object p4, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->methods:Ljava/util/Map;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->a:Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-static {p3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->a(Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v3, p1

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;->matches(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iget-object v5, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget v6, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->writerFlags:I

    iget v7, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$DispatchingVisitor;->readerFlags:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$Entry;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object p1, v3

    :cond_2
    return-object p1
.end method
