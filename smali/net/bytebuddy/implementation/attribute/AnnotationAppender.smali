.class public interface abstract Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;,
        Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;,
        Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
    }
.end annotation


# static fields
.field public static final NO_NAME:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end method

.method public abstract append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end method
