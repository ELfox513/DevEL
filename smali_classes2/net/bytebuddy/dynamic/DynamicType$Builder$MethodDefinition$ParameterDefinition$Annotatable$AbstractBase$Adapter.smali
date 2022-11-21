.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase<",
        "TX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->defaultValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public defaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->defaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/Implementation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public abstract materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition<",
            "TX;>;"
        }
    .end annotation
.end method

.method public throwing(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object p1

    return-object p1
.end method

.method public typeVariable(Ljava/lang/String;Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$TypeVariableDefinition$Annotatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$TypeVariableDefinition$Annotatable<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$TypeVariableDefinition;->typeVariable(Ljava/lang/String;Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$TypeVariableDefinition$Annotatable;

    move-result-object p1

    return-object p1
.end method

.method public withParameter(Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/lang/String;",
            "I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;->withParameter(Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable;

    move-result-object p1

    return-object p1
.end method

.method public withoutCode()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TX;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->withoutCode()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    return-object v0
.end method
