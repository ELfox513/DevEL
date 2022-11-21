.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForExplicitRecordComponent;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract getRecordComponent()Lnet/bytebuddy/description/type/RecordComponentDescription;
.end method

.method public abstract getRecordComponentAppender()Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
.end method

.method public abstract isImplicit()Z
.end method
