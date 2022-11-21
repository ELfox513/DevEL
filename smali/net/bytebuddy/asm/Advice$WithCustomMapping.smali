.class public Lnet/bytebuddy/asm/Advice$WithCustomMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithCustomMapping"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegator:Lnet/bytebuddy/asm/Advice$Delegator;

.field private final offsetMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Delegator;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Delegator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/Enum;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Constructor;I)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;I)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-le v0, p3, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not declare a parameter with index "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A parameter cannot be negative: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Ljava/lang/reflect/Method;I)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-le v0, p3, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not declare a parameter with index "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A parameter cannot be negative: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$OffsetMapping;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;-><init>(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$OffsetMapping;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Resolved$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Resolved$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/field/FieldDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Resolved$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-direct {v1, p2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-interface {p2}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    invoke-direct {p1, v1, v0, v2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Delegator;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Annotation type already mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0, p1, v0, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public varargs bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, p1, v0, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public varargs bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p3}, Lnet/bytebuddy/utility/JavaConstant$Simple;->wrap(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeList$Explicit;->of(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/method/MethodDescription;->isInvokeBootstrap(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfDynamicInvocation;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfDynamicInvocation;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid bootstrap method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p4}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p4}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindLambda(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    new-instance v5, Lnet/bytebuddy/description/type/TypeDescription$Latent;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v15, 0x0

    new-array v4, v15, [Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v6, "java.lang.invoke.LambdaMetafactory"

    invoke-direct {v5, v6, v3, v2, v4}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/16 v7, 0x9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v9

    const/4 v2, 0x6

    new-array v2, v2, [Lnet/bytebuddy/description/method/ParameterDescription$Token;

    new-instance v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v6, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-direct {v4, v6}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v4, v2, v15

    new-instance v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-direct {v4, v6}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v4, v2, v3

    new-instance v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v6, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    invoke-interface {v10}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v10

    invoke-direct {v4, v10}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/16 v16, 0x2

    aput-object v4, v2, v16

    new-instance v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    invoke-interface {v10}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v10

    invoke-direct {v4, v10}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    const/4 v14, 0x3

    aput-object v4, v2, v14

    const/4 v4, 0x4

    new-instance v10, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    sget-object v11, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v11}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    invoke-interface {v11}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v10, v2, v4

    const/4 v4, 0x5

    new-instance v10, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-direct {v10, v6}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    aput-object v10, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    sget-object v13, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v6, "metafactory"

    move-object v4, v0

    const/4 v3, 0x3

    move-object v14, v2

    invoke-direct/range {v4 .. v14}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->asDefined()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static/range {p2 .. p2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->asDefined()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v1

    aput-object v1, v2, v16

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    invoke-virtual {v3, v1, v0, v2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindDynamic(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v3, p0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not define exactly one abstract method: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v3, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not an interface type"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bindProperty(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->of(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Serializable;",
            ")",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bindSerialized(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            "S::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TS;",
            "Ljava/lang/Class<",
            "-TS;>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForSerializedValue$Factory;->of(Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bootstrap(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bootstrap(Ljava/lang/reflect/Method;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p1

    return-object p1
.end method

.method public bootstrap(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$Delegator$ForDynamicInvocation;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Delegator;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Delegator;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    check-cast p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v4, 0x0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 6

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    invoke-static {p1, v0, p2, v1, v2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 5

    new-instance v0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    new-instance v1, Lnet/bytebuddy/asm/Advice$PostProcessor$Factory$Compound;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->postProcessorFactory:Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/asm/Advice$PostProcessor$Factory$Compound;-><init>([Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)V

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->offsetMappings:Ljava/util/Map;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->delegator:Lnet/bytebuddy/asm/Advice$Delegator;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>(Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Delegator;)V

    return-object v0
.end method
