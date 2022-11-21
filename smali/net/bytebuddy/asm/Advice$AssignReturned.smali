.class public abstract Lnet/bytebuddy/asm/Advice$AssignReturned;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$PostProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AssignReturned"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ForScalar;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ForArray;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToThrown;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToReturned;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToThis;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;,
        Lnet/bytebuddy/asm/Advice$AssignReturned$AsScalar;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final NO_INDEX:I = -0x1


# instance fields
.field public final exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

.field public final exit:Z

.field public final skipOnDefaultValue:Z

.field public final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    iput-boolean p4, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->skipOnDefaultValue:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$AssignReturned;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->skipOnDefaultValue:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned;->skipOnDefaultValue:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$AssignReturned;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public abstract getHandlers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned;->skipOnDefaultValue:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p5

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AssignReturned;->getHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AssignReturned;->getHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AssignReturned;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v10

    iget-boolean v4, v0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    if-eqz v4, :cond_0

    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v4

    :goto_1
    invoke-virtual {p0, v5, v4}, Lnet/bytebuddy/asm/Advice$AssignReturned;->toLoadInstruction(Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v4, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    move-object/from16 v2, p6

    invoke-interface {v3, v4, v2, v1}, Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;->wrap(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    iget-boolean v3, v0, Lnet/bytebuddy/asm/Advice$AssignReturned;->skipOnDefaultValue:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lnet/bytebuddy/asm/Advice$AssignReturned;->exit:Z

    if-eqz v3, :cond_2

    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v3

    :goto_2
    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$AssignReturned;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {v2, v1, v3, v4}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->of(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;ILnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public abstract toLoadInstruction(Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
