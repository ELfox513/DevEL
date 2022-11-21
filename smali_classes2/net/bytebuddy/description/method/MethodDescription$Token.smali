.class public Lnet/bytebuddy/description/method/MethodDescription$Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final exceptionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeVariableTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v1, "<init>"

    invoke-direct {p0, v1, p1, v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .param p8    # Lnet/bytebuddy/description/annotation/AnnotationValue;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p9    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iput p2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p5, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    iput-object p6, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    iput-object p7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iput-object p8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iput-object p9, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v5, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;

    invoke-direct {v5, p4}, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;-><init>(Ljava/util/List;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v9, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;"
        }
    .end annotation

    new-instance v10, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v5

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    move-object v9, p1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v10
.end method

.method public asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
    .locals 4

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v2, v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method

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

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    iget v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-nez v2, :cond_4

    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v1, v0

    :goto_1
    if-nez v1, :cond_3

    iget v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->hashCode:I

    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodDescription.Token{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeVariableTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", returnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameterTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
