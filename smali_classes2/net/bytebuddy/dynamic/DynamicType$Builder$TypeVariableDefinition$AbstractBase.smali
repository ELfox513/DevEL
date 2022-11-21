.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition$AbstractBase;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator<",
        "TU;>;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
        "TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;-><init>()V

    return-void
.end method


# virtual methods
.method public annotateTypeVariable(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;->annotateTypeVariable(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateTypeVariable([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition$AbstractBase;->annotateTypeVariable(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateTypeVariable([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;->annotateTypeVariable(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;

    move-result-object p1

    return-object p1
.end method
