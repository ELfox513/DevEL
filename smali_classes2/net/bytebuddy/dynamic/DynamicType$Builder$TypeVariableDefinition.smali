.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
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
    name = "TypeVariableDefinition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition$AbstractBase;
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
.method public abstract annotateTypeVariable(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract annotateTypeVariable(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateTypeVariable([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateTypeVariable([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TS;>;"
        }
    .end annotation
.end method
