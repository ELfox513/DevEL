.class public interface abstract Lnet/bytebuddy/description/annotation/AnnotationDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationDescription$Builder;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;,
        Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    }
.end annotation


# static fields
.field public static final UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getElementTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/ElementType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetention()Ljava/lang/annotation/RetentionPolicy;
.end method

.method public abstract getValue(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract isDocumented()Z
.end method

.method public abstract isInherited()Z
.end method

.method public abstract isSupportedOn(Ljava/lang/String;)Z
.end method

.method public abstract isSupportedOn(Ljava/lang/annotation/ElementType;)Z
.end method

.method public abstract prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation
.end method
