.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForImplicitField;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract getField()Lnet/bytebuddy/description/field/FieldDescription;
.end method

.method public abstract getFieldAppender()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
.end method

.method public abstract isImplicit()Z
.end method

.method public abstract resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
