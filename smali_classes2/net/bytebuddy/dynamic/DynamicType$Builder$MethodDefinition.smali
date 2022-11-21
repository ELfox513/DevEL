.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MethodDefinition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$TypeVariableDefinition;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract annotateMethod(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateMethod([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateMethod([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract annotateParameter(ILjava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateParameter(I[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateParameter(I[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TS;>;"
        }
    .end annotation
.end method
