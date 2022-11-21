.class public Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$WithoutArgumentCopy;
.super Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutArgumentCopy"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public injectStartFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 11
    .param p4    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    move-object v10, p0

    sget-object v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->COPY:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    iget-object v3, v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v0, v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v1, v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
