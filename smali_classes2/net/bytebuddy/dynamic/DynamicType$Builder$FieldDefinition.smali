.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldDefinition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract annotateField(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract annotateField(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateField([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method

.method public varargs abstract annotateField([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract attribute(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TS;>;"
        }
    .end annotation
.end method
