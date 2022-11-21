.class public interface abstract Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Compound;,
        Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Explicit;,
        Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;,
        Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;,
        Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
.end method
