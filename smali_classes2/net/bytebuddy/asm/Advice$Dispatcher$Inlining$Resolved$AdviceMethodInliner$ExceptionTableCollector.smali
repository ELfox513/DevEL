.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionTableCollector"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

.field private final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-void
.end method


# virtual methods
.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner$ExceptionTableCollector;->a:Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object p4, p4, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;->labels:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Label;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
