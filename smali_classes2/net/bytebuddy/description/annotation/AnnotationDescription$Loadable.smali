.class public interface abstract Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loadable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;"
    }
.end annotation


# virtual methods
.method public abstract load()Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
